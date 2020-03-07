from datetime import datetime

from flask._compat import text_type
from flask_login import UserMixin

from App.ext import db, login_manger

#文章
'''
aid:主键 自增
title：标题
content：内容
creat_time:发布时间
author：作者
category：类别
hits：点击量
comments：评论量
'''
class Article(db.Model):
    aid =  db.Column(db.Integer,primary_key=True,autoincrement=True)
    title = db.Column(db.String(100),nullable=True)
    content = db.Column(db.String(10000))
    creat_time = db.Column(db.DateTime,default=datetime.now)
    uid = db.Column(db.Integer)
    cid = db.Column(db.Integer,db.ForeignKey('category.cid',ondelete='CASCADE'))
    hits = db.Column(db.Integer)
    comments = db.Column(db.Integer)
    picture = db.Column(db.String(300))
    __tablename__='article'


'''
用户表
uid：主键
用户名
密码
电话
email
头像
注册时间
是否禁止登录
'''
class User(db.Model,UserMixin):
    uid = db.Column(db.Integer,primary_key=True,autoincrement=True)
    passwd = db.Column(db.String(128), nullable=False)
    username = db.Column(db.String(30), nullable=False,unique=False)
    phone = db.Column(db.String(11))
    email = db.Column(db.String(200))
    portrait = db.Column(db.String(3000))
    regtime = db.Column(db.DateTime)
    isforbid = db.Column(db.Boolean,default=False)
    __tablename__ = 'user'

    def get_id(self):
        try:
            return text_type(self.uid)  # 返回主键
        except AttributeError:
            raise NotImplementedError('No `id` attribute - override `get_id`')

@login_manger.user_loader
def get_user(uid):
    return User.query.get(uid)


'''
类别表
cid：主键，自增
类别名称
文章数量
'''
class Category(db.Model):
    cid = db.Column(db.Integer,primary_key=True,autoincrement=True)
    name = db.Column(db.String(100), nullable=False,unique=True)
    num = db.Column(db.Integer,default=0)
    __tablename__='category'





'''
标签表
tid：主键，自增
名称
文章id：外键
'''
class Tag(db.Model):
    tid = db.Column(db.Integer,primary_key=True,autoincrement=True)
    tname = db.Column(db.String(100), nullable=False,unique=True)
    aid = db.Column(db.Integer,db.ForeignKey('article.aid'))
    __tablename__='tag'
'''
评论
mid：自增
content：内容
creat_time:时间
user：外键，惯量用户
'''
class Mark(db.Model):
    mid = db.Column(db.Integer,primary_key=True,autoincrement=True)
    content = db.Column(db.String(10000))
    creat_time = db.Column(db.DateTime)
    uid = db.Column(db.Integer,db.ForeignKey('user.uid'))
    __tablename__='mark'