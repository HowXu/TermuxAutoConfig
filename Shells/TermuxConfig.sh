echo -e "\033[34m [Start configing Termux...] \033[0m"
rm -rf ~/storage
sleep 5
echo -e  "  "
echo -e  "\033[34m 正在更换中科大源 \033[0m"
cat /dev/null > $PREFIX/etc/apt/sources.list
echo "deb https://mirrors.ustc.edu.cn/termux/apt/termux-main stable main" > $PREFIX/etc/apt/sources.list
sleep 5
echo -e "  "
echo -e "\033[34m 即将进行仓库和软件包更新 \033[0m"
echo -e "\033[34m 遇到的所有选项都可以选y \033[0m"
sleep 3
pkg upgrade -y
sleep 3
pkg update -y
cat /dev/null > $PREFIX/etc/apt/sources.list
echo "deb https://mirrors.ustc.edu.cn/termux/apt/termux-main stable main" > $PREFIX/etc/apt/sources.list
echo -e "  "
echo -e "\033[34m 更新完成 \033[0m"
sleep 4
echo -e "  "
echo -e "\033[34m 即将安装常用工具.. \033[0m"
sleep 5
echo -e "  "
echo -e "\033[34m 安装Figlet(好玩的字母转换) \033[0m"
sleep 4
pkg install figlet -y
sleep 5
echo -e "  "
echo -e "\033[34m 安装cmatrix(下雨) \033[0m"
sleep 4
pkg install cmatrix -y
sleep 5
echo -e "  "
echo -e "\033[34m 安装screenfetch \033[0m"
sleep 4
pkg install screenfetch -y
sleep 5
echo -e "  "
echo -e "\033[34m 安装Git \033[0m"
sleep 4
pkg install git -y
git config --global user.email "howxu366@outlook.com"
git config --global user.name "HowXu"
sleep 5
echo -e "  "
echo -e "\033[34m 安装wget \033[0m"
sleep 4
pkg install wget -y
sleep 5
echo -e "  "
echo -e "\033[34m 安装openssh，并生成ssh密钥 \033[0m"
sleep 4
echo -e "\033[34m 可在~目录下的.ssh文件夹中找到密钥 \033[0m"
pkg install openssh -y
ssh-keygen -t rsa
sleep 5
echo -e "  "
echo -e "\033[34m 安装vim \033[0m"
sleep 4
pkg install vim -y
sleep 5
echo -e "  "
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
sleep 4
pkg install zsh -y
sleep 5
#!下面部分是安装oh-my-zsh的
echo -e "  "
echo -e "\033[34m 安装oh-my-zsh \033[0m"
sleep 4
#sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)" -y
#
rm -rf ~/.termux
git clone https://github.com/Cabbagec/termux-ohmyzsh "$HOME/termux-ohmyzsh" --depth 1

cp -R "$HOME/termux-ohmyzsh/.termux" "$HOME/.termux"

git clone https://github.com/ohmyzsh/ohmyzsh "$HOME/.oh-my-zsh" --depth 1
cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"
sed -i '/^ZSH_THEME/d' "$HOME/.zshrc"
sed -i '1iZSH_THEME="howxu"' "$HOME/.zshrc"
echo "alias chcolor='$HOME/.termux/colors.sh'" >> "$HOME/.zshrc"
echo "alias chfont='$HOME/.termux/fonts.sh'" >> "$HOME/.zshrc"

chsh -s zsh
#
echo -e "  "
echo -e "\033[34m 进行zsh配置 \033[0m"
sleep 4
echo 14 |/data/data/com.termux/files/home/.termux/colors.sh
/data/data/com.termux/files/home/.termux/fonts.sh
git clone https://github.com/HowXu/TermuxAutoConfig
cp /data/data/com.termux/files/home/TermuxAutoConfig/lib/howxu.zsh-theme /data/data/com.termux/files/home/.oh-my-zsh/themes
cp /data/data/com.termux/files/home/TermuxAutoConfig/lib/.zshrc /data/data/com.termux/files/home
cp /data/data/com.termux/files/home/TermuxAutoConfig/lib/motd /data/data/com.termux/files/usr/etc/
rm -rf /data/data/com.termux/files/home/termux-ohmyzsh
rm -rf /data/data/com.termux/files/home/TermuxAutoConfig
echo -e "  "
echo -e "\033[34m 安装zsh常用插件 \033[0m"
sleep 4

rm -rf /data/data/com.termux/files/home/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
rm -rf /data/data/com.termux/files/home/.oh-my-zsh/custom/plugins/zsh-autosuggestions
rm -rf /data/data/com.termux/files/home/.oh-my-zsh/custom/plugins/zsh-completions

git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo -e "\033[34m 安装已经完成，将在3秒后重启 \033[0m"
sleep 3
chsh -s zsh
exit
exit