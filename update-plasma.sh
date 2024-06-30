#!/bin/bash

# Variáveis de cores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
OFF='\033[0m'

#Variável de localização
LOCATION=$HOME/.config/autostart

clear
echo -e "${GREEN} *** Bem vindo ao instalador de complementos KDE-plasma *** ${OFF}"
sleep 6
echo -e "${RED} Removendo aplicativos desnecessários ${OFF}"
sleep 3
sudo pacman -Rsnc htop
echo -e "${GREEN} Instalando o AUR-Helper yay ${OFF}"
sleep 3
git clone https://aur.archlinux.org/yay-git
cd $HOME/archlinux/yay-git/
makepkg -si --noconfirm && yay -Syu --noconfirm
echo -e "${RED} Instalando complementos do kde-plasma ${OFF}"
sleep 3
yay -S --noconfirm --needed gwenview spectacle ark okular kcalc skanlite partitionmanager elisa krdc ktorrent kamoso kdegraphics-mobipocket kdegraphics-thumbnailers breeze-plymouth isoimagewriter gwenview dragon krita
echo -e "${GREEN} Instalação de pacotes adicionais ${OFF}"
sleep 3
yay -S --noconfirm --needed conky-lua lsb-release zsh testdisk p7zip zip unzip unrar aic94xx-firmware linux-firmware-qlogic wd719x-firmware upd72020x-fw ast-firmware lzo ffmpeg ffmpegthumbs ffmpegthumbnailer firefox firefox-i18n-pt-br libreoffice-fresh-pt-br aspell-pt hunspell-pt-br libreoffice-extension-vero libreoffice-impress-templates ttf-ms-fonts ttf-ubuntu-font-family ttf-roboto ttf-roboto-mono ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono ttf-roboto ttf-roboto-mono ttf-font-logos ttf-font-awesome-5 ttf-dejavu ttf-liberation gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly gst-libav gvfs gvfs-goa gvfs-google gvfs-smb vim yt-dlp youtube-dl dosfstools starship zsh-autocomplete-git zsh-syntax-highlighting-git zsh-autosuggestions-git smbclient sshfs ntfs-3g packagekit-qt6 epson-inkjet-printer-escpr cups ghostscript gsfonts gst-ffmpeg gstreamer visual-studio-code-bin kio-zeroconf kio-fuse kio-gdrive plymouth linux-headers gst-plugin-pipewire git btrfs-progs checkupdates-with-aur
echo -e "${YELLOW} Alterando o shell padrão para o zsh ${OFF}"
sleep 3
chsh -s /bin/zsh
echo -e "${RED} Atualizando mais algumas coisas ${OFF}"
sleep 3
sudo systemctl enable --now bluetooth.service cups.service && sudo fc-cache -v -f
cd /$HOME/archlinux/
cp conkyrc $HOME/.conkyrc
cp draw_bg.lua $HOME/.draw_bg.lua
cp Iniciar_Conky.sh $HOME/.Iniciar_Conky.sh
cp vimrc $HOME/.vimrc && cp zshrc $HOME/.zshrc
sudo cp eu.png /usr/share/plasma/avatars/
echo -e "${GREEN} Reiniciando modprobe da camera! ${OFF}"
sleep 3
sudo modprobe -r uvcvideo && sudo modprobe uvcvideo
echo -e "${RED} Instalação de complementos bem sucedido... ${OFF}"
sleep 3
echo -e "${YELLOW} Reiniciando o sistema. Aguarde...! ${OFF}"
sleep 6
reboot
