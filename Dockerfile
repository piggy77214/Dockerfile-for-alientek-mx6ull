FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

#千万不能用apt，否则直接构建失败
#因为apt做了很多图形化输出，脚本识别不了这个
#apt-get才是最初的下载命令，输出也是最干净的
RUN apt-get update && \
apt-get install -y xz-utils && \
apt-get install -y build-essential && \
apt-get install -y vim && \
apt-get install -y lsb-core && \
apt-get install -y lib32stdc++6 && \
apt-get install -y libncurses5-dev && \
apt-get install -y lzop && \
rm -rf /var/lib/apt/lists/*

RUN mkdir /usr/local/arm

WORKDIR /usr/local/arm

COPY gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf.tar.xz /usr/local/arm

RUN tar -vxf gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf.tar.xz && \
echo 'export PATH=$PATH:/usr/local/arm/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf/bin' >> /etc/profile

# 声明挂载点（容器内路径）
# 运行容器时需使用 -v 参数指定主机目录，例如：
# docker run -v /home/a123456/linux/doker-bind-ubuntu16.04:/home/bind <镜像名>
# Dockerfile 中用 VOLUME 声明挂载点
# 运行容器时用 -v 或 --mount 参数挂载主机目录
RUN mkdir /home/bind
VOLUME ["/home/bind"]

CMD ["/bin/bash"]
