FROM node:9-alpine
MAINTAINER Shudong Zhu <shudong@eefocus.com>
RUN echo "https://mirrors.aliyun.com/alpine/v3.6/main" > /etc/apk/repositories  \
	&&echo "https://mirrors.aliyun.com/alpine/v3.6/community" >> /etc/apk/repositories  \
    && apk update \	
    && apk add tzdata\
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" >  /etc/timezone \
    && rm -rf /var/cache/apk/* 

