# 关于该项目
## 本项目已实现功能
1. 将`v2ray`, `xray`内核打包为`.xcframework`格式, 可以在项目中使用. 可通过Google Drive获取: [XrayCore.xcframework.zip](https://drive.google.com/file/d/1kgZplp4jIeJ1PMiBDNtXLGQvYIdeqWO_/view?usp=drive_link), [Greeter.xcframework.zip](https://drive.google.com/file/d/1rwGcpl44FmbjKB7sG-sZKfJz1rVYU8XE/view?usp=drive_link) .
2. 可以通过修改`config.json`, 手动配置服务器端口以及本机端口; 同时在iPhone的WIFI设置中, 手动设置http代理, 从而成功跑通.
## 本项目未实现功能
1. 项目名称的`UI`. 实际上没有任何UI, 其本质上是一个不支持实时修改配置的后台程序.
2. 无法通过程序修改iPhone的http/https代理. 市面上常见的科学代理软件, 其实现流量拦截转发的方法是通过设置VPN, 将运行的内核视作VPN的服务器. 然而, 设置VPN需要`Apple Developer`资格. What can I say! Only Apple can do.(bushi)
