import requests
import lxml
import urllib
import threading
from bs4 import BeautifulSoup
from urllib import request
import os

PAGE_URL = 'http://www.doutula.com/article/list/?page='
#页面的url列表
PAGE_URL_LIST = []
#所有表情的url列表
FACE_URL_LIST = []
#全局锁

page = 2
pagenum = 40
gLock = threading.Lock()
aLock = threading.Lock()
count = 0
znum = (page-1)*pagenum

def procuder():
    while True:
        gLock.acquire()
        listlen = len(PAGE_URL_LIST)
        gLock.release()
        if listlen == 0:
            break
        else:
            gLock.acquire()
            page_url = PAGE_URL_LIST.pop()
            gLock.release()
            headers = ('User-Agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36')
            opener = request.build_opener()
            opener.addheaders = [headers]
            res = opener.open(page_url)
            
#             res = requests.get(page_url)
#             content = res.content
            soup = BeautifulSoup(res,'html.parser')
            img_list = soup.find_all('img',attrs={'class':'lazy image_dtb img-responsive'})
            print(soup,'该网页找不到 标题 .main-title',img_list)
            gLock.acquire()
            for img in img_list:
                url = img['data-original']
                FACE_URL_LIST.append(url)
            gLock.release()

def customer():
    global count
    while True:
        aLock.acquire()
        listlen = len(FACE_URL_LIST)
        if znum <= count:
            aLock.release()
            break
        elif listlen == 0:
            aLock.release()
            continue
        else:
            count = count +1
#             print(count)
            face_url = FACE_URL_LIST.pop()
            aLock.release()
            filename = face_url.split('/').pop()
            path = os.path.join('D:\images',filename)
            request.urlretrieve(face_url,filename= path)

def startThread():
    #创建两个多线程来作为生产者，去爬取表情的url
    for x in range(3):
        
        th = threading.Thread(target = procuder)
        th.start()


#     创建4个线程作为消费者，去吧表情图片url下载下来
    for x in range(1):
        th = threading.Thread(target = customer)
        th.start()

for x in range(1,page):
    newurl = PAGE_URL + str(x)
    
    PAGE_URL_LIST.append(newurl)
    
startThread()