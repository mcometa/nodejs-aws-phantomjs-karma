FROM node:6.2.2
MAINTAINER Marc Cometa <marc@matchmove.com>

RUN apt-get update -y
RUN apt-get install awscli -y && apt-get install nginx -y && apt-get install curl -y

#==============
# PhantomJS
#==============
RUN apt-get install bzip2 libfreetype6 libfontconfig1  -y
RUN wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2
RUN tar -xvjf phantomjs-1.9.8-linux-x86_64.tar.bz2 && rm phantomjs-1.9.8-linux-x86_64.tar.bz2
RUN mv phantomjs-1.9.8-linux-x86_64 /usr/local/phantomjs-1.9.8-linux-x86_64
RUN ln -s /usr/local/phantomjs-1.9.8-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs
