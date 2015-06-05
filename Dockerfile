FROM centos

RUN yum -y install git gcc g++ cmake

RUN mkdir -p /d/git && mkdir -p /d/var/fastdfs 

RUN cd /d/git && git clone https://github.com/happyfish100/libfastcommon.git

RUN cd /d/git/libfastcommon && ./make.sh && ./make.sh install

RUN cd /d/git && git clone https://github.com/hhland/fastdfs.git

RUN cd /d/git/fastdfs && ./make.sh && ./make.sh install
