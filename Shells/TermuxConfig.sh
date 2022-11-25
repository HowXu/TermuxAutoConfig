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
echo -e "\033[34m 安装oh-my-zsh \033[0m"
sleep 4
echo 0|sh -c "$(curl -fsSL https://html.sqlsec.com/termux-install.sh)" -y
echo 0|/data/data/com.termux/files/home/termux-ohmyzsh/install.sh
echo -e "  "
echo -e "\033[34m 进行zsh配置 \033[0m"
sleep 4
echo 14 |/data/data/com.termux/files/home/.termux/colors
echo 14 |/data/data/com.termux/files/home/.termux/colors.sh
echo 11 |/data/data/com.termux/files/home/.termux/fonts.sh
git clone https://github.com/HowXu/TermuxAutoConfig
cp /data/data/com.termux/files/home/TermuxAutoConfig/lib/howxu.zsh-theme /data/data/com.termux/files/home/.oh-my-zsh/themes
cp /data/data/com.termux/files/home/TermuxAutoConfig/lib/.zshrc /data/data/com.termux/files/home
cp /data/data/com.termux/files/home/TermuxAutoConfig/lib/motd /data/data/com.termux/files/usr/etc/
rm -rf /data/data/com.termux/files/home/termux-ohmyzsh
rm -rf /data/data/com.termux/files/home/TermuxAutoConfig
echo -e "  "
echo -e "\033[34m 安装zsh常用插件 \033[0m"
sleep 4
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo -e "\033[34m 安装已经完成，将在3秒后重启 \033[0m"
sleep 3
exit