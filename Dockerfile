FROM raspbian/stretch

RUN sed -i s:stretch:buster:g /etc/apt/sources.list
RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y gcc cmake g++ libcurl4 libcurl4-openssl-dev \
	                   libgtk-3-0 libgtk-3-bin \
	                   libdc1394-22 libdc1394-22-dev
ADD opencv-4.1.1-armeabi-bin.tar.xz /
CMD ["/usr/bin/bash"]
