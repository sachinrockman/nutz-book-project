# NutzCN平台

[![PowerByNutz](https://img.shields.io/badge/PowerBy-Nutz-green.svg?style=plastic)](https://github.com/nutzam/nutz)

与nutzbook相关的2.x分支在这里[master分支](https://github.com/wendal/nutz-book-project/tree/master)

## 依赖的环境

* mysql/oracle/pgsql/h2 数据库
* redis 3.0+
* maven 3.3.9+
* Jdk 8u121+

**本项目必须依赖Redis数据库** http://redis.io

Redis-Windows 下载地址  https://github.com/MSOpenTech/redis/releases 或者 https://nutz.cn/nutzdw/

后台管理账户密码 admin/123456

* 在线演示地址 https://nutz.cn 
* 管理后台(需要管理员权限才能操作)  https://nutz.cn/adminlte

本项目是由模块化+插件化开发, 请查阅[hotplug开发指南](https://github.com/nutzam/nutzmore/tree/master/nutz-plugins-hotplug)
(**This project must rely on Redis database** http://redis.io

Redis-Windows download address https://github.com/MSOpenTech/redis/releases or https://nutz.cn/nutzdw/

Background management account password admin/123456

* Online demo address https://nutz.cn
* Management background (requires administrator rights to operate) https://nutz.cn/adminlte

This project is developed by modular + plug-in, please refer to [hotplug Development Guide](https://github.com/nutzam/nutzmore/tree/master/nutz-plugins-hotplug))
## 模块简介

* nutzcn-core 核心模块,其他模块均依赖它
* nutzcn-webapp web项目模块, 用于启动
* nutzcn-adminlte 后台管理界面
* nutzcn-yvr 论坛模块
* nutzcn-cxfdemo WebService(CXF)的demo
* nutzcn-swagger Swagger API的demo
* nutzcn-qqrobot 对接`第五代QQ机器人`的Web Callback
* nutzcn-shortit 文件文本短地址服务
* nutzcn-weixin 微信集成模块
* nutzcn-uflo UFLO2工作流demo
* nutzcn-oauth 第三方OAuth登录模块
(## Module introduction

* nutzcn-core core module, other modules rely on it
* nutzcn-webapp web project module, used to start
* nutzcn-adminlte background management interface
* nutzcn-yvr forum module
* demo of nutzcn-cxfdemo WebService(CXF)
* demo of nutzcn-swagger Swagger API
* nutzcn-qqrobot is connected to the Web Callback of `the fifth generation QQ robot`
* nutzcn-shortit file text short address service
* nutzcn-weixin WeChat integration module
* nutzcn-uflo UFLO2 workflow demo
* nutzcn-oauth third-party OAuth login module)
## 如何开发

默认情况下, webapp模块仅依赖了core和adminlte,所以启动后只有后台可访问.

在eclipes下, 单击nutzcn-webapp模块, 然后按 Ctrl+Alt+P, 按需加载的模块

若新建模块, 务必按hotplug插件规范的要求添加必要的文件
(## How to develop

By default, the webapp module only relies on core and adminlte, so only the background can be accessed after startup.

Under eclipes, click the nutzcn-webapp module, and then press Ctrl+Alt+P to load the module on demand

If you create a new module, you must add the necessary files as required by the hotplug plug-in specification)

## 手机客户端

Android官方客户端 

  * 下载地址 http://app.xiaomi.com/detail/419235
  * 源码地址 https://github.com/wendal/NutzCN-Material-Design

iOS客户端

  * 下载地址 https://itunes.apple.com/us/app/nutz-she-qu/id1082195150?l=zh&ls=1&mt=8
  * 源码地址 https://github.com/TuWei1992/NutzCommunity
(## Mobile client

Android official client

  * Download link http://app.xiaomi.com/detail/419235
  * Source code address https://github.com/wendal/NutzCN-Material-Design

iOS client

  * Download address https://itunes.apple.com/us/app/nutz-she-qu/id1082195150?l=zh&ls=1&mt=8
  * Source address https://github.com/TuWei1992/NutzCommunity)
## License

MIT License或Apache License 双授权协议,商用免费
