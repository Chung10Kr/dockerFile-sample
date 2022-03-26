# DockerFile sample


## Dockerfile command

```bash
# docker file build
docker build -t [빌드할 이미지이름] .
docker build -t chung10/python3:1.0 .

# docker file push to DockerHub
docker push [push할 이미지 이름]
docker push chung10/python3:1.0

```



## images command
```bash
# 도커 이미지 목록 확인
docker images

# docker hub에서 사용가능 한 docker image 목록을 가져온다.
docker search [이미지명]

# 이미지 다운로드
docker pull [이미지명]

# 이미지 삭제
docker rmi [이미지id]


```

## container command
```bash
# 동작중인 컨테이너 확인
docker ps

# 컨테이너 목록
docker ps -a

# 컨테이너 생성
docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run -it --name my-ubuntu ubutu bash
docker run -p 8888:8000 --name my-web-server web-server-build
docker run -p 8888:8000 --name my-web-server web-server-build

# 컨테이너 시작/재시작/정지
docker start [컨테이너 이름]
docker restart [컨테이너 이름]
docker stop [컨테이너 이름]

# 컨테이너 커밋
docker commit my-ubuntu [레파지토리이름]
docker commit my-ubuntu repo:ubuntu-git

# 컨테이너 삭제
docker rm [컨테이너id]

# 컨테이너 접속
docker exec -it [컨테이너이름] /bin/bash
```