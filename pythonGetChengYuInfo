# coding=utf-8
import requests
import json
import re
import pandas
import sqlite3
from bs4 import BeautifulSoup
from datetime import datetime
import threading, queue, time, urllib

baseUrl = 'https://hanyu.baidu.com/zici/s?wd={}&cf=jielong&ptype=idiom'
urlQueue = queue.Queue()
wordsInfo = []
# chuchu.split() 方法中不带参数时，表示分割所有换行符、制表符、空格。   去掉字符串中在\n
#join()连接字符串数组。将字符串、元组、列表中的元素以指定的字符(分隔符)连接生成一个新的字符串。
# split join 配合使用 split分割出来的字符串被放到数组里 所有用join连接字符串数组
def getWordInfo(url):
    result = {}
    res = requests.get(url)
    res.encoding = 'utf-8'
    soup = BeautifulSoup(res.text,'html.parser')
    result['word'] = soup.select('#body-wrapper strong')[0].text
    result['pinyin'] = soup.select('.pinyin')[0].text[2:-2]
    result['idiom'] = soup.select('#basicmean-wrapper p')[0].text.replace(" ","").strip()  # strip 把末尾的'\n'删掉
    result['chuchu'] = ""
    if soup.select('#source-wrapper'): # 没有出处
        result['chuchu'] = soup.select("#source-wrapper p")[0].text.strip()
    return result

def fetchUrl(urlQueue):
    while True:
        try:
            #不阻塞的读取队列数据
            url = urlQueue.get_nowait()
            wordInfo = getWordInfo(url)
            wordsInfo.append(wordInfo)
        except Exception as e:
            break

#读txt文本  为了保证无论是否出错都能正确地关闭文件 with as
# with open('C:/Users/admin/Desktop/word.txt','r') as f:
#     tab = f.read().split(" ")

basestation ="store.xlsx"
data = pandas.read_excel(io=basestation)
str = ""
for v in data.values:  #获取xlsx表格
    str += v[0] + " "
tab = str[0:-1].split(" ")

for word in tab:
    url = 'https://hanyu.baidu.com/zici/s?wd={}&cf=jielong&ptype=idiom'.format(word)
    urlQueue.put(url)
    
if __name__ == '__main__':
    startTime = time.time()
    threads = []
    threadNum = 12 # 可以调节线程数， 进而控制抓取速度
    for i in range(0, threadNum):
        t = threading.Thread(target=fetchUrl, args=(urlQueue,))
        threads.append(t)
    for t in threads:
        t.start()
    for t in threads:#多线程多join的情况下，依次执行各线程的join方法, 这样可以确保主线程最后退出， 且各个线程间没有阻塞
        t.join()

    df = pandas.DataFrame(wordsInfo)
    df.to_excel('wordsInfo.xlsx')
    print("完成任务")
    endTime = time.time()
    print ('Done, Time cost: %s ' %  (endTime - startTime))
