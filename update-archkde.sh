#!/bin/bash
clear
echo -e "\e[33;1m Instalação de complementos no archlinux KDE\e[0m"
sleep 6
echo -e "\e[42;1m Atualizando o Sistema\e[0m"
sudo pacman -Syu && sudo pacman -S git -y && sudo pacman -Rsn plasma-meta discover
echo -e "\e[34;1m Instalando o AUR-Helper yay\e[0m"
sleep 3
git clone https://aur.archlinux.org/yay-git
cd $HOME/archlinux/yay-git/
makepkg -si --noconfirm
yay -Syu --noconfirm
echo -e "\e[35;1m Instalação de complementos do KDE\e[0m"
sleep 3
yay -S bluedevil breeze-gtk drkonqi kde-gtk-config kdeplasma-addons kgamma5 khotkeys kinfocenter kscreen ksshaskpass kwallet-pam kwayland-integration kwrited oxygen oxygen-sounds plasma-browser-integration plasma-desktop plasma-disks plasma-firewall plasma-nm plasma-pa plasma-systemmonitor plasma-thunderbolt plasma-vault plasma-welcome plasma-workspace-wallpapers powerdevil sddm-kcm xdg-desktop-portal-kde breeze-grub breeze-plymouth flatpak-kcm plasma-sdk plymouth-kcm okular ark spectacle gwenview kcalc skanlite partitionmanager elisa krdc ktorrent kamoso kalendar isoimagewriter kmail kmail-account-wizard kdegraphics-thumbnailers kdegraphics-mobipocket
echo -e "\e[35;1m Instalação de pacotes adicionais\e[0m"
sleep 3
yay -S conky-lua lsb-release zsh testdisk p7zip unrar aic94xx-firmware linux-firmware-qlogic wd719x-firmware upd72020x-fw ffmpeg ffmpegthumbs ffmpegthumbnailer firefox firefox-i18n-pt-br libreoffice-fresh-pt-br aspell-pt libreoffice-extension-vero libreoffice-impress-templates ttf-ms-fonts ttf-ubuntu-font-family gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly vim yt-dlp youtube-dl ttf-roboto ttf-roboto-mono dosfstools nerd-fonts-git starship zsh-autocomplete-git zsh-syntax-highlighting-git zsh-autosuggestions-git plymouth-git smbclient gvfs gvfs-goa gvfs-google gvfs-smb sshfs gvfs gvfs-goa gvfs-google gvfs-smb sshfs ntfs-3g octopi octopi-notifier-frameworks epson-inkjet-printer-escpr cups ghostscript gsfonts gst-ffmpeg gstreamer pulsar-bin onedrivegui teams-for-linux
echo -e "\e[36;1m Alterando o shell padrão para o zsh\e[0m"
sleep 3
chsh -s /bin/zsh
echo -e "\e[36;1m Copiando configurações do zsh\e[0m"
sleep 3
cp $HOME/archlinux/zshrc $HOME/.zshrc
cp $HOME/archlinux/starship.toml $HOME/.config/
echo -e "\e[32;1m Instalação de complementos bem sucedido...\e[0m"
sleep 3
echo -e "\e[34;1m É preciso reiniciar o sistema!\e[0m"
sleep 3
sudo reboot
exit
