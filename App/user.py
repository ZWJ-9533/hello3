from flask_login import login_user, logout_user, login_required
from flask import Blueprint, render_template, request, redirect, url_for, flash
from App.blog import User

us = Blueprint("us",__name__,)

@us.route('/login/',methods=['GET','POST'])
def user_login():
    if request.method=='POST':
        username = request.values.get('username')
        password = request.values.get('password')
        user = User.query.filter(User.username==username,User.passwd==password).first()
        if user:
            login_user(user)
            return redirect(url_for('bp.home'))
        else:
            flash('用户名密码错误')
    return render_template('login.htm')

@us.route('/logout/')
def user_logout():
    # 退出登录
    logout_user()
    return redirect('/')

# @us.route("/reply/")
# @login_required
# def reply_article():
#     return "回复"