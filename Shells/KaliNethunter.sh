echo "\033[34m [开始安装KaliNetHunter] \033[0m"
sleep 3
pkg install wget -y
 wget -O install-nethunter-termux https://offs.ec/2MceZWr
 chmod +x install-nethunter-termux
 ./install-nethunter-termux -y
 rm kalifs-arm64-full.tar.xz
 rm install-nethunter-termux
 rm kalifs-arm64-full.tar.xz.shasum