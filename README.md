## TermuxAutoConfig
一个用于自动配置Termux的shell脚本
 
在项目的Shells文件夹中有所有的shell自动文件，选择其中一个在~目录下运行即可  
请不要在内部存储设备空间中执行脚本，并且`termux-setup-storage`需要先执行一次  

```Bash
termux-setup-storage
cd ~
sh -c "$(wget https://fastly.jsdelivr.net/gh/HowXu/TermuxAutoConfig/Shells/TermuxConfig.sh -O -)"
```

## 说明
**如果不能正常配置，请更换网络或使用速度快的VPN节点并清除Termux缓存重新配置**  
**Shell内置的zsh主题为个人制作**  

## 文件说明
TermuxConfig是个人需求配置Termux的Shell  
KaliNethunter是自动在termux中配置KaliNethunterRootless的Shell  

## 鸣谢
感谢jsDelivr提供的CDN服务
