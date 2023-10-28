echo  " [Start configing Termux...] "
rm -rf ~/storage
echo  "  "
echo  " 更换中科大源... "
cat /dev/null > $PREFIX/etc/apt/sources.list
echo "deb https://mirrors.ustc.edu.cn/termux/apt/termux-main stable main" > $PREFIX/etc/apt/sources.list
echo "  "
echo " 即将进行仓库和软件包更新 "
echo " 遇到的所有选项都可以选y "
sleep 3
apt update -y
apt upgrade -y
echo "  "
echo " 更新完成 "
echo "  "
echo " 安装常用工具.. "
echo "  "
echo " 安装neofetch "
sleep 2
apt install neofetch -y
echo "  "
echo " 安装Git "
sleep 2
apt install git -y
echo "  "
echo " 安装wget "
sleep 2
apt install wget -y
echo "  "
echo " 安装openssh,自行生成ssh密钥"
sleep 2
apt install openssh -y
echo "  "
echo " 安装vim "
sleep 2
apt install vim -y
echo "  "
echo " 安装android-tools "
sleep 2
apt install android-tools -y
echo "  "
echo " 安装proot "
sleep 2
apt install proot -y
echo "  "
echo " 安装zip "
sleep 2
apt install proot -y
echo "  "
echo " 安装zsh "
sleep 2
apt install zsh -y
#!下面部分是安装oh-my-zsh的，使用了ghproxy代理
echo "  "
echo " 安装oh-my-zsh "
sleep 2
#sh -c "$(curl -fsSL https://ghproxy.com/github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)" -y
#
rm -rf ~/.termux
git clone https://ghproxy.com/github.com/Cabbagec/termux-ohmyzsh "$HOME/termux-ohmyzsh" --depth 1
cp -R "$HOME/termux-ohmyzsh/.termux" "$HOME/.termux"
git clone https://ghproxy.com/github.com/ohmyzsh/ohmyzsh "$HOME/.oh-my-zsh" --depth 1
cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"
sed -i '/^ZSH_THEME/d' "$HOME/.zshrc"
sed -i '1iZSH_THEME="howxu"' "$HOME/.zshrc"
echo "alias chcolor='$HOME/.termux/colors.sh'" >> "$HOME/.zshrc"
echo "alias chfont='$HOME/.termux/fonts.sh'" >> "$HOME/.zshrc"

chsh -s zsh
#
echo "  "
echo " 进行zsh配置 "
sleep 2
echo 14 |/data/data/com.termux/files/home/.termux/colors.sh
#sleep 3
#echo 11 |/data/data/com.termux/files/home/.termux/fonts.sh
#未知原因更换字体使用自动化会闪退所以没有自动化换字体
git clone https://ghproxy.com/github.com/HowXu/TermuxAutoConfig
cp /data/data/com.termux/files/home/TermuxAutoConfig/lib/howxu.zsh-theme /data/data/com.termux/files/home/.oh-my-zsh/themes
cp /data/data/com.termux/files/home/TermuxAutoConfig/lib/.zshrc /data/data/com.termux/files/home
cp /data/data/com.termux/files/home/TermuxAutoConfig/lib/motd /data/data/com.termux/files/usr/etc/

rm -rf /data/data/com.termux/files/home/termux-ohmyzsh
rm -rf /data/data/com.termux/files/home/TermuxAutoConfig

echo "  "
echo " 安装zsh常用插件 "
sleep 2

rm -rf /data/data/com.termux/files/home/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
rm -rf /data/data/com.termux/files/home/.oh-my-zsh/custom/plugins/zsh-autosuggestions
rm -rf /data/data/com.termux/files/home/.oh-my-zsh/custom/plugins/zsh-completions

git clone https://ghproxy.com/github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone https://ghproxy.com/github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-autosuggestions
git clone https://ghproxy.com/github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo " 安装已经完成,将在3秒后重启 "
sleep 3
chsh -s zsh
exit
exit
