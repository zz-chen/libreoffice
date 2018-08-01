FROM centos:centos7

#RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN yum update -y
RUN yum install -y libreoffice-headless libreoffice-writer libreoffice-calc libreoffice- libreoffice-impress libreoffice-langpack-ja ImageMagick curl java-1.8.0-openjdk-devel java-1.8.0-openjdk
RUN yum clean all

RUN mkdir /usr/share/fonts/ipa-ex-mincho
Add ./ipaexm00301/ipaexm.ttf /usr/share/fonts/ipa-ex-mincho
RUN chmod 0644 /usr/share/fonts/ipa-ex-mincho/ipaexm.ttf

WORKDIR /
