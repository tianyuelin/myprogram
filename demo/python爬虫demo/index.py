"""
import  urllib3
http = urllib3.PoolManager()
r = http.request("get","http://www.baidu.com/")
print(r.status);
print(r.data)
"""

import urllib
import pymysql
import requests
import urllib3
import json
from bs4 import BeautifulSoup;
import random
import urllib
import urllib.request
"""
以故宫为例，爬取一些基本信息
"""
'''
# 这段代码是遍历两个列表之后赋值给新的两个列表
for i in xq, yw:
    answer, question = i[:]    # 这里可以加代码对元素操作之后再赋值给新的列表
    print answer, ",", question  # 你可以把这句放在for循环外面在看下结果
'''

def insert(insert_connection, insert_sql, param):
    with insert_connection.cursor() as cursor:
        cursor.execute(insert_sql, param)
def getinfo(url):
    proxy_list = [
        '101.4.136.34:81',
        '117.191.11.72:8080',
        '117.191.11.113:8080',
        '39.137.77.66:8080',
        '117.191.11.104:80',
        '183.245.99.52:80'
    ]
    proxy = random.choice(proxy_list)
    # 基于选择的IP构建连接
    urlhandle = urllib.request.ProxyHandler({'http': proxy})
    opener = urllib.request.build_opener(urlhandle)
    urllib.request.install_opener(opener)
    headers = {"User-Agent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36"}
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

    index = range(1,images.__len__())
    #抓取图片地址
    img=[]
    for i in range(1,len(images)):
        img.append(images[i].attrs.get('src'))
    #抓取游玩建议时长
    time=[]
    for i in range(len(times)):
        time.append(times[i].get_text())

    miaoshu = []
    for i in range(len(miaoshus)):
        miaoshu.append(miaoshus[i].get_text())
    #路线
    bus = dd[0].get_text()
    #票价
    ticket = dd[1].get_text()
    #开放时间
    opentime = dd[2].get_text()
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
    sql = "insert into poi_info (poi_name,poi_summary,poi_time,poi_traffic,poi_ticket,poi_open_time) values (%s,%s,%s,%s,%s,%s)"
    insert(connection, sql, (pymysql.escape_string(name[0].get_text()), miaoshu[0], pymysql.escape_string(time[0]), bus,
                             pymysql.escape_string(ticket), pymysql.escape_string(opentime)))
    print('爬取成功')
def geturl():
    post_url = "http://www.mafengwo.cn/ajax/router.php"
    page = 1
    proxy_list = [
        '101.4.136.34:81',
        '117.191.11.72:8080',
        '117.191.11.113:8080',
        '39.137.77.66:8080',
        '117.191.11.104:80',
        '183.245.99.52:80'
    ]
    proxy = random.choice(proxy_list)
    # 基于选择的IP构建连接
    urlhandle = urllib.request.ProxyHandler({'http': proxy})
    opener = urllib.request.build_opener(urlhandle)
    urllib.request.install_opener(opener)
    urls = []
    while page <= 20:
        param = {'sAct': 'KMdd_StructWebAjax|GetPoisByTag', 'iMddid': 11830, 'iTagId': 0, 'iPage': page}
        # 使用urllib
        param = urllib.parse.urlencode(param)
        param = param.encode('utf-8')
        urlhandle = urllib.request.ProxyHandler({'http': proxy})
        new_url = urllib.request.Request(post_url, param)
        urllib.request.install_opener(opener)
        response = urllib.request.urlopen(new_url)
        # 返回的是一个json格式的字符串，将字符串转为dict对象
        data_json = json.loads(response.read().decode("utf8"))
        # 获取返回信息中的html格式的li列表
        li_list = data_json.get("data").get("list")
        # 转为BeautifulSoup对象
        soup = BeautifulSoup(li_list, 'html.parser')
        beijing_pois = soup.find_all({"a"})
        for i in range(len(beijing_pois)):
            urls.append(beijing_pois[i].attrs.get('href'))
            getinfo('http://www.mafengwo.cn'+urls[i])
        page = page + 1

geturl()





