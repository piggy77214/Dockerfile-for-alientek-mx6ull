<!-- markdownlint-disable -->

<div align="center">


# 适配正点原子imx6ull开发板环境的docker



<div>
  <a href="https://hub.docker.com/">
    <img alt="Docker" src="https://img.shields.io/badge/Docker-lightgrey?logo=docker&style=flat-square">
  </a>
</div>

<!-- markdownlint-restore -->

</div>

## 介绍

高版本的ubuntu（如26.04）在编译正点原子提供的uboot和linux内核时存在版本兼容问题，比如
- 编译器报警告（因为编译器版本太高）
- 无法找到相关依赖（如libncurses5-dev）

为了解决这些问题，必须使用低版本ubuntu16.04，但这个版本过于老旧，使用起来很不方便，比如无法使用最新版visual studio code,claude code,micro等开发工具。

但是，同时安装两个版本的ubuntu系统又太占用固态硬盘的空间（我的小破电脑实在撑不住啊！）

于是，我们可以用doker专门配置ubuntu16.04的正点原子开发环境，并运行在ubuntu26.04上，相比于再装一个低版本系统，由这个doerfile生成的镜像大约只要2G。极大地节约了空间。

## 使用方法

- 下载仓库
- 在本仓库的目录下添加交叉编译工具链文件，就是正点原子的驱动开发手册上提供的那个gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf.tar.xz
- 创建docker镜像

## 相关教学
- 如果不了解docker的使用，可以参考[Docker从入门到实践](https://docker-practice.github.io/zh-cn/)

## 最后
如果我的内容对您有帮助，请帮我点一下右上角的小星星，谢谢您的支持～
<!-- markdownlint-disable -->s
