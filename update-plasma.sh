#!/bin/bash

# Variáveis de cores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
OFF='\033[0m'

#Variável de localização
LOCATION=$HOME/

clear
echo -e "${GREEN} *** Bem vindo ao instalador de complementos KDE-plasma *** ${OFF}"
sleep 6
echo -e "${RED} ___ Removendo aplicativos desnecessários ___ ${OFF}"
sleep 3
sudo pacman -Rsnc htop
cd /usr/share/applications/
sudo rm avahi-discover.desktop bssh.desktop bvnc.desktop qvidcap.desktop qv4l2.desktop
cd $HOME/archlinux
echo -e "${GREEN} ___ Instalando o AUR-Helper yay ___ ${OFF}"
sleep 3
git clone https://aur.archlinux.org/yay-git
cd $HOME/archlinux/yay-git/
makepkg -si --noconfirm && yay -Syu --noconfirm
echo -e "${RED} ___ Instalando complementos do kde-plasma ___ ${OFF}"
sleep 3
yay -S --noconfirm --needed gwenview spectacle ark okular kcalc skanlite partitionmanager elisa krdc ktorrent kamoso kdegraphics-mobipocket kdegraphics-thumbnailers breeze-plymouth isoimagewriter gwenview dragon krita
echo -e "${GREEN} ___ Instalação de pacotes adicionais ___ ${OFF}"
sleep 3
yay -S --noconfirm --needed conky-lua lsb-release zsh testdisk p7zip zip unzip unrar aic94xx-firmware linux-firmware-qlogic wd719x-firmware upd72020x-fw ast-firmware lzo ffmpeg ffmpegthumbs ffmpegthumbnailer firefox firefox-i18n-pt-br libreoffice-fresh-pt-br aspell-pt hunspell-pt-br libreoffice-extension-vero libreoffice-impress-templates ttf-ms-fonts ttf-ubuntu-font-family ttf-roboto ttf-roboto-mono ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono ttf-roboto ttf-roboto-mono ttf-font-logos ttf-font-awesome-5 ttf-dejavu ttf-liberation gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly gst-libav gvfs gvfs-goa gvfs-google gvfs-smb vim yt-dlp youtube-dl dosfstools starship zsh-autocomplete-git zsh-syntax-highlighting-git zsh-autosuggestions-git smbclient sshfs ntfs-3g packagekit-qt6 epson-inkjet-printer-escpr cups ghostscript gsfonts gst-ffmpeg gstreamer visual-studio-code-bin kio-zeroconf kio-fuse kio-gdrive plymouth linux-headers gst-plugin-pipewire git btrfs-progs checkupdates-with-aur thunderbird thunderbird-i18n-pt-br kwave python-pipx nerd-fonts-git
echo -e "${YELLOW} ___ Alterando o shell padrão para o zsh ___ ${OFF}"
sleep 3
chsh -s /bin/zsh
echo -e "${RED} ___ Atualizando mais algumas coisas ___ ${OFF}"
sleep 3
sudo systemctl enable --now bluetooth.service cups.service && sudo fc-cache -v -f
cd /$HOME/archlinux/
cp conkyrc $HOME/.conkyrc
cp bargraph_small.lua $HOME/.bargraph_small.lua
cp -r conky $HOME/.conky
cp starship.toml $HOME/.config/
cp vimrc $HOME/.vimrc && cp zshrc $HOME/.zshrc
cp -r arch-mac-style /usr/share/plymouth/themes/
sudo cp eu.png /usr/share/plasma/avatars/
echo -e "${GREEN} Reiniciando modprobe da camera! ${OFF}"
sleep 3
sudo modprobe -r uvcvideo && sudo modprobe uvcvideo
echo -e "${RED} Adicionando Papeis de Parede... ${OFF}"
sleep 3
cd /$HOME/archlinux/
sudo cp -r /KDE/Chinesa Deserto Estradas /usr/share/wallpapers/
echo -e "${RED} Instalação de complementos bem sucedido... ${OFF}"
sleep 3
echo -e "${YELLOW} Reiniciando o sistema. Aguarde...! ${OFF}"
sleep 6
reboot
