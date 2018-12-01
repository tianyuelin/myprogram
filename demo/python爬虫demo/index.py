"""
import  urllib3
http = urllib3.PoolManager()
r = http.request("get","http://www.baidu.com/")
print(r.status);
print(r.data)
"""
import pymysql
import requests
import urllib3
import json
from bs4 import BeautifulSoup;
"""
以故宫为例，爬取一些基本信息
"""
if 5==5:
    url='http://www.mafengwo.cn/poi/3474.html'
   #通过f12调试器，找到网页的header（和data）
    headers = {"User-Agent":"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36"}
    req = requests.get(url = url,headers = headers)
    req.encoding = 'utf-8'
    html = req.text
    #html解析器
    bf = BeautifulSoup(html,'lxml')
    images = bf.select('img')
    miaoshus = bf.select('.summary')
    times = bf.select('.item-time > .content')
    dd = bf.select('dd')
    name = bf.select('h1')
    print('名称:')
    print(name[0].get_text())
    index = range(1,images.__len__())
    #抓取图片地址
    img=[]
    for i in range(1,len(images)):
        img.append(images[i].attrs.get('src'))
    print("图片:")
    print(img)
    #抓取游玩建议时长
    time=[]
    for i in range(len(times)):
        time.append(times[i].get_text())
    print('建议游玩时长:')
    print(time)
    miaoshu = []
    for i in range(len(miaoshus)):
        miaoshu.append(miaoshus[i].get_text())
    print('景点概述:')
    print(miaoshu)
    bus = dd[0].get_text()
    ticket = dd[1].get_text()
    opentime = dd[2].get_text()
    print('交通路线：')
    print(bus)
    print('票价：')
    print(ticket)
    print('开放时间:')
    print(opentime)
'''
# 这段代码是遍历两个列表之后赋值给新的两个列表
for i in xq, yw:
    answer, question = i[:]    # 这里可以加代码对元素操作之后再赋值给新的列表
    print answer, ",", question  # 你可以把这句放在for循环外面在看下结果
'''
'''
此处开始连接数据库，将数据插入数据库中，进行数据持久化
'''
connection = pymysql.connect(host='127.0.0.1',
                             user='root',
                             password='',
                             db='test',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor,
                             autocommit=True)
#直接传参，调用insert函数
def insert(insert_connection, insert_sql, param):
    with insert_connection.cursor() as cursor:
        cursor.execute(insert_sql, param)
sql = "insert into poi_info (poi_name,poi_summary,poi_time,poi_traffic,poi_ticket,poi_open_time) values (%s,%s,%s,%s,%s,%s)"

insert(connection,sql,(pymysql.escape_string(name[0].get_text()),miaoshu[0],pymysql.escape_string(time[0]),bus,pymysql.escape_string(ticket),pymysql.escape_string(opentime)))
