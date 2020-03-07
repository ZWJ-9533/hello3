import re

from flask import session
from flask_wtf import FlaskForm
from wtforms import SelectField, PasswordField, StringField
from wtforms.fields.html5 import EmailField
from wtforms.validators import DataRequired, Length, EqualTo, ValidationError, Regexp

from App.blog import User


class Regist(FlaskForm):
    username = StringField(validators=[DataRequired('用户名必须输入')])
    password = PasswordField(validators=[DataRequired('请输入密码'),Length(min=6,max=12,message='密码长度范围在6-12位之间')])
    confilm = PasswordField(validators=[DataRequired('再次输入密码'),EqualTo('password',message='两次密码不一致')])
    phone = StringField(validators=[Regexp(r'^(13\d|14[5|7]|15\d|166|17[3|6|7]|18\d)\d{8}$')])
    code = StringField()
    sms = StringField()
    content = StringField()

    def validate_username(self,field):
        user = User.query.filter(User.username==field.data).first()
        if user:
            raise ValueError('重名')
        return field

    # 字段验证
    def validate_sms(self, field):
        print(field.data, session.get("sms"))
        if field.data != session.get("sms"):
            raise ValidationError("短信验证失败")

    def validate_code(self, field):
        print(field.data, session.get('code'))
        if field.data != session.get('code'):
            raise ValidationError("验证码匹配失败")






