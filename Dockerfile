FROM python:3.6.5-slim

MAINTAINER shau-lok

RUN sed -i 's#http://archive.ubuntu.com#http://mirrors.163.com#g' /etc/apt/sources.list
RUN sed -i 's#http://deb.debian.org#http://mirrors.163.com#g' /etc/apt/sources.list
RUN sed -i 's#http://security-cdn.debian.org#http://mirrors.163.com#g' /etc/apt/sources.list
RUN sed -i 's#http://security.debian.org#http://mirrors.163.com#g' /etc/apt/sources.list
RUN sed -i 's#stretch#jessie#g' /etc/apt/sources.list

RUN apt-get update \
    && apt-get -yq install python-dev libmysqlclient-dev \
    libicu-dev apt-utils gcc curl wget vim netbase \
    && apt-get clean all
