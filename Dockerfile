FROM daocloud.io/scbizu/golang

MAINTAINER scnace "scbizu@gmail.com"
ENV REFRESHED_AT 2016-6-11 21：58
# system update
RUN apt-get update

# install beego
RUN go get -u github.com/astaxie/beego

# install bee
RUN go get -u github.com/beego/bee

#set bee env
RUN export PATH=$PATH:$GOPATH/bin

#install app
RUN git clone https://github.com/scbizu/Zafu_jwcInterface.git

WORKDIR "/Zafu_jwcInterface.git"
#

RUN bee run
