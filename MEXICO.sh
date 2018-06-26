THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR
install() {
wget "https://valtman.name/files/telegram-cli-1222"
mv telegram-cli-1222 tg
sudo chmod +x tg
echo -e "
 __  __   ______ _  ___ ____ _  __   ___
|  \/  | / ____|\\  //   ||  | |/ / / _ \
| |\/| | /|  _|  \\//    ||  |   / | | | |
| |  | | \| |___ //\\    ||  | . \ | |_| |  
|_|  |_| \_____|//  \\  ____ |_|\_\ \___/
 BY @MEXIC_TV DEV : @VI_P2            "
echo -e "" 
echo -e "" 
}
if [ "$1" = "install" ]; then
install
else
if [ ! -f ./tg ]; then
echo "" 
echo ""
exit 1
fi
./tg -s MEXICO.lua
fi
