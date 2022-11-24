echo -e  "\033[34m [Start configing Termux...] \033[0m"
rm -rf ~/storage
sleep 5
echo -e  "  "
echo -e  "\033[34m 正在更换中科大源 \033[0m"
cp /data/data/com.termux/files/home/TermuxAutoConfig/lib/sources.list $PREFIX/etc/apt/
sleep 5
echo -e "  "
echo -e "\033[34m 即将进行软件包和仓库更新 \033[0m"
sleep 3
pkg update -y
sleep 3
pkg upgrade -y
echo -e "  "
echo -e "\033[34m 更新完成 \033[0m"
sleep 4
echo -e "  "
echo -e "\033[34m 即将安装常用工具.. \033[0m"
sleep 5
echo -e "  "
echo -e "\033[34m 安装Figlet(大字母转换) \033[0m"
sleep 4
pkg install figlet -y
sleep 5
echo -e "  "
echo -e "\033[34m 安装cmatrix(代码雨) \033[0m"
sleep 4
pkg install cmatrix -y
sleep 5
echo -e "  "
echo -e "\033[34m 安装Git \033[0m"
sleep 4
pkg install git -y
sleep 5
echo -e "  "
echo -e "\033[34m 安装wget \033[0m"
sleep 4
pkg install wget -y
sleep 5
echo -e "  "
echo -e "\033[34m 安装openssh \033[0m"
sleep 4
pkg install openssh -y
sleep 5
echo -e "  "
echo -e "\033[34m 安装vim \033[0m"
sleep 4
pkg install vim -y
sleep 5
echo -e "\033[34m 安装android-tools \033[0m"
sleep 4
pkg install android-tools -y
sleep 5
echo -e "  "
echo -e "\033[34m 安装proot \033[0m"
sleep 4
pkg install proot -y
sleep 5
echo -e "  "
echo -e "\033[34m 安装zsh \033[0m"
sleep 3
echo -e "\033[34m 请在接下来的选项中两次分别选择14与4 \033[0m"
sleep 4
sh -c "$(curl -fsSL https://html.sqlsec.com/termux-install.sh)" -y
/data/data/com.termux/files/home/termux-ohmyzsh/install.sh
git clone https://github.com/HowXu/TermuxAutoConfig
cp /data/data/com.termux/files/home/TermuxAutoConfig/lib/howxu.zsh-theme /data/data/com.termux/files/home/.oh-my-zsh/themes
cp /data/data/com.termux/files/home/TermuxAutoConfig/lib/.zshrc /data/data/com.termux/files/home
cp /data/data/com.termux/files/home/TermuxAutoConfig/lib/motd /data/data/com.termux/files/usr/etc/
rm -rf /data/data/com.termux/files/home/TermuxAutoConfig
echo -e "\033[34m 安装已经完成，将在3秒后重启 \033[0m"
sleep 3
exit