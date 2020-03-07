from flask import Blueprint, render_template, request, make_response, redirect, session, jsonify
from App.SMS import sms
from App.forms import *
from App.verifycode import *
from App.blog import *
from datetime import datetime, timedelta

bp = Blueprint('bp',__name__,)

#首页
@bp.route('/',methods=['GET','POST'] )
def home():
    articles = Article.query.all()
    email = phone = request.values.get('email')
    user = User(email=email,username='邮箱使用者',passwd='123456')
    db.session.add(user)
    db.session.commit()
    return render_template('index.html',**locals())



@bp.route('/register/',methods=['GET','POST'])
def register_user():
    form = Regist()
    articles = Article.query.all()
    if request.method=='POST':
        if form.validate_on_submit():
            username = form.username.data
            passwd = form.password.data
            phone = form.phone.data
            print(phone)
            user = User(username=username)
            user.passwd = passwd
            user.phone = phone
            db.session.add(user)
            db.session.commit()
            return redirect('/')
    return render_template('register.htm',**locals())


#时间差
@bp.route('/mom/')
def mom():
    current_time = datetime.utcnow() + timedelta(seconds=-60)
    return render_template('blog.html', current_time=current_time)



@bp.route("/list/")
@bp.route("/list/<int:cid>/")
@bp.route("/list/<int:cid>/<int:page>/")
def list_article(cid=-1,page=1):
    if cid < 0:  # 如果cid不带参数，值-1，就查询默认分类
        # 获取默认分类中所有的文章数据
        category = Category.query.first()
        cid = category.cid  # 获取第一个cid
    # 实现分类，把 articles，换成分页对象
    # articles = db.session.query(Article, Category).filter(Article.cid == Category.cid, Category.cid == cid).all()
    pagination = db.session.query(Article, Category).filter(Article.cid == Category.cid, Category.cid == cid).paginate(page,2)
    pagination.page_range = range(1, 3)

    # article_num = len(pagination)

    # 提取分类数据
    categories = Category.query.all()
    # 提取标签
    tags = Tag.query.all()
    tags_num = len(tags)

    #时间差
    current_time = datetime.utcnow() + timedelta(seconds=-60)



    # 最近3篇文章
    three_articles = Article.query.order_by(-Article.creat_time).all()[:3]
    return render_template("blog.html",**locals())


@bp.route("/post/")
@bp.route("/post/<int:aid>/")
def list_post(aid=0):
    # if aid > 0: # 如果cid不带参数，值-1，就查询默认分类
    #     # 获取默认分类中所有的文章数据
    #     article = Article.query.first()
    #     aid = article.aid # 获取第一个cid
    categories = Category.query.all()
    category = Category.query.first()
    # print(category)
    cid = category.cid  # 获取第一个cid
    articles = Article.query.all()
    article_num = len(articles)

    # 提取分类数据
    tags = Tag.query.all()
    tags_num = len(tags)
    # 最近3篇文章
    three_articles = Article.query.order_by(-Article.creat_time).all()[:3]
    three = len(three_articles)

    num = randint(3,10)
    marks = Mark.query.all()[:num]
    marks_num = len(marks)
    cate = db.session.query(User,Mark).filter(User.uid==Mark.uid).all()
    # print(cate[0][0].username)

    return render_template("post.html",**locals())

@bp.route('/verify/')
def verify_code():
    result = vc.generate()
    # 把验证码字符串保存到session
    session['code']= vc.code
    response = make_response(result)
    response.headers["Content-Type"] = "image/png"
    #返回图片
    return response

#短信验证
@bp.route('/send/',methods=['GET','POST'])
def send_sms():
    phone = request.values.get('phone')
    print(phone)
    if phone:
        # 产生验证码
        num = randint(1000, 9999)
        # 添加到session
        session['sms'] = str(num)
        para = "{'number':'%d'}" % num
        res = sms.send(phone, para)
        print(res, type(res))
        return jsonify({'code': 1, 'msg': '发送成功'})
    return jsonify({"code": 0, 'msg': "电话号码不存在"})


@bp.route('/pinlun/',methods=['GET','POST'])
def register_pinlun():
        content = request.values.get('usercomment')
        username = request.values.get('username')
        mark = Mark(content=content)
        cata = db.session.query(User.uid).filter(User.username == username).first()
        mark.uid = cata[0]
        db.session.add(mark)
        db.session.commit()
        return redirect('/')
