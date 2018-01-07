import requests
import json
import re
import pandas
import sqlite3
from bs4 import BeautifulSoup
from datetime import datetime

# --------在js中获得 动态更新的评论数-------
commentURL = 'http://comment5.news.sina.com.cn/page/info?version=1&format=json&channel=sh&\
newsid=comos-{}&group=undefined&compress=0&ie=utf-8&oe=utf-8&page=1&page_size=3&\
t_size=3&h_size=3&thread=1'
def getCommentCounts(newsrul):
    m = re.search('doc-i(.*).shtml',newsrul)
#     print(m)
    newsid = m.group(1)
    comments = requests.get(commentURL.format(newsid))
    jd = json.loads(comments.text)
    count = jd['result']['count']['total']
    return count

#--------获得单一新闻中的属性-------
def getNewsDetail(newsurl):
    result = {}
    res = requests.get(newsurl)
    res.encoding = 'utf-8'
    soup = BeautifulSoup(res.text,'html.parser')
    if not soup.select('.main-title'): # 排除无效网页
        print(newsurl,'该网页找不到 标题 .main-title')
        return
    result['title'] = soup.select('.main-title')[0].text
    if not soup.select('.date-source a'):
        print(newsurl,'该网页找不到 来源网站 .date-source a')
        return
    result['newssource'] = soup.select('.date-source a')[0].text 
    timesource = soup.select('.date-source')[0].contents[1].text
    result['dt'] = datetime.strptime(timesource,'%Y年%m月%d日 %H:%M').strftime('%Y-%m-%d')
    result['article'] = '\n'.join([p.text.strip() for p in soup.select('.article p')[:-1]])
#     result['article'] = '我是内容，我是内容，我是内容'
    result['editor'] = soup.select('.show_author')[0].text.lstrip('责任编辑：').strip()
    result['comments'] = getCommentCounts(newsurl)
    return result

#--------获得单一分页中的所有新闻-------
def parseListLinks(url):
    newsdetails = []
    res = requests.get(url)
    jd = json.loads(res.text.lstrip('  newsloadercallback(').rstrip(');'))
    for ent in jd['result']['data']:
        item = getNewsDetail(ent['url'])
        if item:
            newsdetails.append(item)
    return newsdetails

#--------遍历指定范围分页，保存新闻内容-------
url = 'http://api.roll.news.sina.com.cn/zt_list?channel=news&cat_1=gnxw&cat_2==gdxw1||=gatxw||=zs-pl||=mtjj&level==1||=2&show_ext=1&show_all=1&show_num=22&tag=1&format=json&page={}'
news_total = []
for i in range(1,3):
    newsurl = url.format(i)
    newsary = parseListLinks(newsurl)
    news_total.extend(newsary)
    
#--------将获得的新闻内容格式化为 表格-------
df = pandas.DataFrame(news_total)

#--------将新闻数据存入名为 'news.sqlite'的数据库，表名为 news -------
#with sqlite3.connect('news.sqlite') as db:
#    df.to_sql('news',con = db)
#print('数据保存到 news.sqlite 中。。。')
#--------取新闻数据从 'news.sqlite'的数据库中，表名为 news -------
#with sqlite3.connect('news.sqlite') as db:
#    df2 = pandas.read_sql_query('SELECT * FROM news',con = db)
#print('数据读取到 df2 中。。。')

#--------保存数据为excel表-------
#df.to_excel('news.xlsx')
