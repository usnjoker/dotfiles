#!/bin/sh

SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")



sudo pacman -S uim --noconfirm
sudo pacman -S noto-fonts-cjk --noconfirm
ln -s $SCRIPTPATH/.xprofile ~/.xprofile



sudo pacman -Syu --noconfirm && sudo pacman -Scc --noconfirm
sudo pacman -S yaourt --noconfirm



sudo pacman -S ack --noconfirm
sudo pacman -S tree --noconfirm
sudo pacman -S vim --noconfirm
sudo pacman -S terminator --noconfirm
yaourt -S google-chrome --noconfirm
sudo pacman -Rns firefox

sudo pacman -S virtualbox --noconfirm
sudo pacman -S linux414-virtualbox-host-modules --noconfirm 
sudo gpasswd -a bean vboxusers


sudo pacman -S mpd --noconfirm
sudo pacman -S ncmpcpp --noconfirm
rm ~/.config/mpd
ln -s $SCRIPTPATH/mpd ~/.config



yaourt -S i3-kde --noconfirm
yaourt -S ttf-font-awesome --noconfirm
sudo pacman -S lua conky --noconfirm
rm ~/.config/plasma-workspace
ln -s $SCRIPTPATH/plasma-workspace ~/.config
rm ~/.config/i3
ln -s $SCRIPTPATH/i3 ~/.config
KDEWM_SETTING='export KDEWM=i3'
KDEWM_SETTING_COUNT=$(cat ~/.xinitrc |grep -c $KDEWM_SETTING)
if [[ $KDEWM_SETTING_COUNT = 0 ]]; then
    echo 'export KDEWM=i3' >> ~/.xinitrc
fi
sudo pacman -S perl-anyevent-i3 --noconfirm
sudo yaourt -S perl-json-xs --noconfirm



git config --global user.name "ws.jung.d"
git config --global user.email "ws.jung.d@gmail.com"



yaourt -S jdk8 --noconfirm
sudo archlinux-java set java-8-jdk
yaourt -S intellij-idea-ultimate-edition --noconfirm



#sudo pacman -S docker --noconfirm
#sudo usermod -aG docker $USER
#newgrp docker
#systemctl start docker
#systemctl status docker
#systemctl enable docker
#docker pull mysql
#docker run -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=dkagh -d mysql --bind-address=0.0.0.0
#docker ps -a



# fish 설정
pacman -S fish2
chsh -s /usr/bin/fish
curl -L https://get.oh-my.fish | fish
omf install eclm



yaourt -S betterlockscreen --noconfirm
yaourt -S i3-scrot --noconfirm
yaourt -S xautolock --noconfirm
mkdir ~/.local
ln -s $SCRIPTPATH/bin/ ~/.local/
yaourt -S archey3 --noconfirm



wget https://services.gradle.org/distributions/gradle-2.14.1-bin.zip
unzip gradle-2.14.1-bin.zip
mv gradle-2.14.1-bin /opt
ln -s /opt/gradle-2.14.1/bin/gradle /bin/gradle