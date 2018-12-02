import pymysql
import requests
import urllib3
import json
from bs4 import BeautifulSoup
import urllib

#爬取景点详情页的URL
post_url = "http://www.mafengwo.cn/ajax/router.php"
page = 1
# 北京景点一共20页
urls = []
while page <= 20:
    param = {'sAct': 'KMdd_StructWebAjax|GetPoisByTag', 'iMddid': 10065, 'iTagId': 0, 'iPage': page}
    # 使用urllib
    param = urllib.parse.urlencode(param)
    param = param.encode('utf-8')
    new_url = urllib.request.Request(post_url, param)
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
    page=page+1
print(urls)


