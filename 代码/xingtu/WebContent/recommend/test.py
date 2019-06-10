import math
import os
from sys import argv
class ItemBasedCF:
    def __init__(self,train_file):
        self.train_file=train_file
        self.readData()

    def readData(self):
        # 读取文件，并生成用户-物品的评分表和测试集
        self.train = dict()  # 用户-物品的评分表
        for line in open(self.train_file):
            # user,item,score = line.strip().split(",")  此处三个值按照实际文件上改变顺序
            #stripe(rm) 当rm为空时，默认删除空白符（包括'\n', '\r',  '\t',  ' ')
            #strip().split("\t")代表将每行的每个字符一个一个分开，变成一个list
            user, item, score = line.strip().split("::")
            #给字典train设置键为user，值为{}的键值对。写成用户1：{物品1，物品2，物品4...}的格式
            self.train.setdefault(user, {})
            self.train[user][item] = int(float(score))

    def ItemSimilarity(self):
        # 建立物品-物品的共现矩阵C[i,j]:表示物品i与j共同被多少用户所喜欢
        C = dict()  # 物品-物品的共现矩阵
        N = dict()  # 物品被多少个不同用户购买
        for user, items in self.train.items():
            for i in items.keys():
                N.setdefault(i, 0)
                N[i] += 1
                C.setdefault(i, {})
                for j in items.keys():
                    if i == j: continue
                    C[i].setdefault(j, 0)
                    C[i][j] += 1
        # 计算相似度矩阵W[i][j] ：用户与用户之间的相似度矩阵
        self.W = dict()
        for i, related_items in C.items():
            self.W.setdefault(i, {})
            for j, cij in related_items.items():
                #利用余弦相似度公式
                self.W[i][j] = cij / (math.sqrt(N[i] * N[j]))
        return self.W
        #给用户user推荐，前K个相关用户
    def Recommend(self, user, K=4, N=10): #更改相关用户的个数可以增加或减少推荐景点数
        rank = dict()
        action_item = self.train[user]  # 用户user产生过行为的item和评分
        for item, score in action_item.items():
            for j, wj in sorted(self.W[item].items(), key=lambda x: x[1], reverse=True)[0:K]:
                if j in action_item.keys():
                    continue
                rank.setdefault(j, 0)
                rank[j] += score * wj
        return dict(sorted(rank.items(), key=lambda x: x[1], reverse=True)[0:N])


#声明一个ItemBased推荐的对象
os.chdir(r'D:\log')
Item=ItemBasedCF("commentstrategy.log")
Item.ItemSimilarity()
username=argv[1]
recommendDic=Item.Recommend(username)#用户"44165416@qq.com"
for k,v in recommendDic.items():
    print(k,"\t",v)

#没有出数据，可能是因为数据集不够多
