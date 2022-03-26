# server image는 ubunutu 20.04를 사용
FROM ubuntu:20.04 
# Dockerfile 작성자
MAINTAINER Chung10 <coohg93@hanmail.net> 

# image가 올라갔을 때 수행되는 명령어들
# -y 옵션을 넣어서 무조건 설치가 가능하도록 한다.
RUN \
    apt-get update && \
    apt-get install -y python3

WORKDIR /var/www/html

COPY ["index.html" , "."]
cmd ["python3" ,"-u" ,"-m" ,"http.server"]