# non-free repo
xbps-install -Sy void-repo-nonfree

# install packages
xbps-install -Sy gnome intel-ucode xorg-fonts mesa-vulkan-intel intel-video-accel mesa-intel-dri tilix starship brasero gedit-plugins qbittorrent vlc kvantum gnome-power-manager firefox chrome-gnome-shell htop neofetch ncdu nano opendoas papirus-icon-theme xdg-user-dirs xdg-user-dirs-gtk xdg-utils ntfs-3g gvfs-cdda gvfs-gphoto2 gvfs-mtp gvfs-smb flatpak noto-fonts-ttf ttf-ubuntu-font-family noto-fonts-emoji amiri-font font-sil-alkalami font-sil-awami-nastaliq font-sil-harmattan font-sil-lateef font-sil-abyssinica font-sil-andika font-sil-annapurna font-sil-charis font-sil-doulos font-sil-ezra font-sil-galatia font-sil-gentium font-sil-mingzat font-sil-mondulkiri font-sil-namdhinggo font-sil-nuosu font-sil-padauk font-sil-scheherazade font-sil-sophia-nubian font-sil-tai-heritage-pro liberation-fonts-ttf gparted WoeUSB bleachbit unrar libunrar lzlib unzip shotwell libreoffice-calc libreoffice-common libreoffice-fonts libreoffice-gnome libreoffice-i18n-ar libreoffice-i18n-en-US libreoffice-impress libreoffice-writer libreoffice-xtensions grub-customizer gufw mtpfs ghex

# flatpak 
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Kvantum 
echo export QT_STYLE_OVERRIDE=kvantum >> /etc/environment
kvantummanager --set KvGnomeDark 

# remove packages
xbps-remove -Fy sudo openssh acpid dhcpcd gnome-user-docs yelp yelp-xsl gnome-shell-extensions gnome-backgrounds linux-firmware-amd linux-firmware-nvidia cheese gnome-calendar gnome-contacts gnome-font-viewer gnome-music gnome-remote-desktop orca sane simple-scan totem network-manager-applet
xbps-remove -oOy

# runit services
rm /var/service/agetty-tty4
rm /var/service/agetty-tty5
rm /var/service/agetty-tty6
rm /var/service/acpid
rm /var/service/bluetoothd
rm /var/service/brltty
rm /var/service/colord
rm /var/service/dhcpcd
rm /var/service/elogind
rm /var/service/polkitd
rm /var/service/rtkit
rm /var/service/slapd
rm /var/service/sshd
rm /var/service/uuidd

reboot

#  /etc/doas.conf
# echo permit nopass "user" as root 

# command prompt
# eval "$(starship init bash)"		.bashrc
# starship.toml 			.config/

# aliases
# alias cl="clear"
# alias it="doas xbps-install"
# alias dl="doas xbps-remove"
# alias sr="doas xbps-query"
# alias fi="doas flatpak install"
# alias fr="doas flatpak remove"
# alias fu="doas flatpak update"

# cp /etc/xdg/autostart/geoclue-demo-agent.desktop ~/.config/autostart
# cp /etc/xdg/autostart/gnome-keyring-ssh.desktop ~/.config/autostart
# cp /etc/xdg/autostart/org.gnome.Evolution-alarm-notify.desktop ~/.config/autostart
# cp /etc/xdg/autostart/org.gnome.SettingsDaemon.PrintNotifications.desktop ~/.config/autostart
# cp /etc/xdg/autostart/org.gnome.SettingsDaemon.Wacom.desktop ~/.config/autostart
# cp /etc/xdg/autostart/org.gnome.SettingsDaemon.Wwan.desktop ~/.config/autostart
# cp /etc/xdg/autostart/zeitgeist-datahub.desktop ~/.config/autostart
# echo X-GNOME-Autostart-enabled=false >> ~/.config/autostart/geoclue-demo-agent.desktop
# echo X-GNOME-Autostart-enabled=false >> ~/.config/autostart/gnome-keyring-ssh.desktop 
# echo X-GNOME-Autostart-enabled=false >> ~/.config/autostart/org.gnome.Evolution-alarm-notify.desktop
# echo X-GNOME-Autostart-enabled=false >> ~/.config/autostart/org.gnome.SettingsDaemon.PrintNotifications.desktop 
# echo X-GNOME-Autostart-enabled=false >> ~/.config/autostart/org.gnome.SettingsDaemon.Wacom.desktop 
# echo X-GNOME-Autostart-enabled=false >> ~/.config/autostart/org.gnome.SettingsDaemon.Wwan.desktop
# echo X-GNOME-Autostart-enabled=false >> ~/.config/autostart/zeitgeist-datahub.desktop
