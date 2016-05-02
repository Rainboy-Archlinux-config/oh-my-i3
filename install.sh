#!/bin/bash
dir=`dirname $0`
conky_ver=`conky -v | grep "conky 1.10" > /dev/null && echo "1.10" || echo "1.9"`
NET=`/sbin/ifconfig | awk '/192/{print a}{a=$1}' | sed 's/://g'`
C=$HOME/.config/i3/config

# 备份旧文件
cd ~/.config/i3/ 2> /dev/null && mv config config_old 2> /dev/null && mv conkyrc_bar conkyrc_bar_old 2> /dev/null
mv ~/bin/st ~/bin/st_old 2> /dev/null

# 生成所需目录
mkdir ~/bin ~/.fonts ~/.config/i3 2> /dev/null

# 安装字体与st脚本
cd $dir
cp -r font-awesome Monaco.ttf ~/.fonts
cp st ~/bin/

# 生成conkyrc_bar配置
cp conkyrc_bar${conky_ver} ~/.config/i3/conkyrc_bar
    sed -i "s/wlan0/$NET/g" ~/.config/i3/conkyrc_bar

# 生成i3配置
cp config ~/.config/i3/
    sed -i "s/xfce4-terminal/i3-sensible-terminal/g" $C
    sed -i "17,24s/^\([^#]\)/#\1/g" $C
    sed -i "46,50s/^\([^#]\)/#\1/g" $C
    sed -i "59s/^\([^#]\)/#\1/g" $C
    sed -i "62s/^\([^#]\)/#\1/g" $C
    sed -i "23,24d" $C

fc-cache

echo -e "\n安装成功，请参照说明先配置好 $C 并重载以获得更好的体验！"
