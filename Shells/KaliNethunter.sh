echo "[开始安装KaliNetHunter]"
sleep 3
pkg install wget -y
git clone https://github.com/HowXu/TermuxAutoConfig
cp ./TermuxAutoConfig/lib/install-nethunter-termux ./install-nethunter-termux
chmod +x install-nethunter-termux
./install-nethunter-termux -y
rm kalifs-arm64-full.tar.xz
rm -rf TermuxAutoConfig
rm install-nethunter-termux
rm kalifs-arm64-full.tar.xz.shasum