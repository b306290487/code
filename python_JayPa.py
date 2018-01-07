import requests
import pandas
from bs4 import BeautifulSoup
rul = 'http://www.javyoo.com/cn/jav-class?page={}'
itemUrls = []
iteminfo = []

def getItemUrl(newurl):
    res = requests.get(newurl)
    res.encoding = 'utf-8'
    soup = BeautifulSoup(res.text,'html.parser')
    result = soup.select('.item h6 a')
    for item in result:
        url = 'http://www.javyoo.com' + item['href']
        itemUrls.append(url)
        
def getItemInfo(newurl):
    result = {}
    res = requests.get(newurl)
    res.encoding = 'utf-8'
    soup = BeautifulSoup(res.text,'html.parser')
    if not soup.select('.flex-video img'):
        return
    result['fanhao'] = soup.select('.flex-video img')[0]['alt']
    result['title'] = soup.select('.post-title h4')[0].text
    result['time'] = soup.select('.post-title span')[0].text
    result['jianjie'] = soup.select('.description')[0].contents[0]
    result['imgurl'] = soup.select('.flex-video img')[0]['src']
    result['url'] = newurl
    return result

for i in range(1,2):
    newrul = rul.format(i)
    getItemUrl(newrul)

for url in itemUrls:
    info = getItemInfo(url)
    if info:
        iteminfo.append(info)
df = pandas.DataFrame(iteminfo)
