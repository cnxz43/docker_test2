# 基于的基础镜像
FROM python:3.5.3

# 维护者信息
MAINTAINER xuzhijuan  xuzhijuan@he.chinamobile.com

# 代码添加到code文件夹
COPY ./HX_Center_OSS ./code

# 设置code文件夹是工作目录
WORKDIR ./code

# 安装支持
RUN pip install django
RUN pip install pymysql
RUN pip install -r requirements.txt

# PORT
EXPOSE 80

CMD ["python", "manage.py", "runserver"]