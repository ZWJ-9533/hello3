from App.ext import db

# class User(db.Model):
#     uid = db.Column(db.Integer,primary_key=True,autoincrement=True)
#     username = db.Column(db.String(30),nullable=False)
#     passwd = db.Column(db.String(128),nullable=False)
#     sex = db.Column(db.Boolean,default=False)
#
#
#     #replies不会再user表中生成字段
#     # backref由评论查询用户是使用
#     #lazy:加载关联数据的时机
#     replies = db.relationship('Reply',backref='user',lazy='dynamic')
#     #和UserDetail是一对一关系
#     #uselist = False,体现了一对一
#     detail = db.relationship('UserDetail',backref='user',uselist=False)
#     __tablename__ = 'user66'
#
# #一对一关系，用户详情
# class UserDetail(db.Model):
#     __table__='detail'
#     id = db.Column(db.Integer,primary_key=True,autoincrement=True)
#     phone = db.Column(db.String(11))
#     emial = db.Column(db.String(200))
#     #外键表示一对多，但unique=True,限制uid得取值不能重复，所以说一对一
#     uid = db.Column(db.Integer,db.ForeignKey('use66.uid',ondelete='CASCADE'),unique=True)
#
#
#
#
#
# #评论，一对多关系
# class Reply(db.Model):
#     cid = db.Column(db.Integer,primary_key=True,autoincrement=True)
#     create_time = db.Column(db.DateTime)
#     # 外键在多端
#     #db.ForeignKey(被参照表的表名.主键名',ondelete='CASCADE'（级联删除，用户删了，评论也会删）)
#     uid = db.Column(db.Integer,db.ForeignKey('use66.id',ondelete='CASCADE'))
#     content = db.Column(db.String(150))
#     __tablename__='reply11'