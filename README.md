## TermuxAutoConfig
一个用于自动配置Termux的shell脚本
 
在项目的Shells文件夹中有所有的shell自动文件，下载其中一个在~目录下运行即可  
(termux-setup-storage只需要执行一次)
```Bash
termux-setup-storage  
chmod +x 123.sh  
./123.sh  
```
## 说明
**如果不能正常配置，请更换网络或使用速度快的VPN节点并清除Termux缓存重新配置**
**由于未知的原因，在oh-my-zsh的字体选择是只能手动选择，默认是11**  
项目Code中的howxu.zsh-theme仅为为Termux安装zsh主题时使用的主题文件，没有其他用途  
**Shell内置的zsh主题为个人制作，仅符合个人需求**
**Shell在配置中会自动设置git的默认用户和邮箱**  
**Shell内安装的工具包也为个人需求**

## 文件说明
TermuxConfig是个人需求配置Termux的Shell  
KaliNethunter是自动在termux中配置KaliNethunterRootless的Shell
