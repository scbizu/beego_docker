FROM daocloud.io/scbizu/golang

MAINTAINER scnace "scbizu@gmail.com"
ENV REFRESHED_AT 2016-6-11 21：58
# system update
RUN apt-get update

# install beego
RUN go get -u github.com/astaxie/beego

# install app
RUN go get -u github.com/scbizu/Zafu_jwcInterface
