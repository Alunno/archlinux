#!/bin/bash

# Variáveis de cores
RED='\033[0;31m'
GREEN='\033[0;32m'        
YELLOW='\033[0;33m'  
OFF='\033[0m'

#Variável de localização
LOCATION=$HOME/.config/autostart

clear
echo -e "${RED} Instalação de complementos no archlinux (Gnome) ${OFF}"
sleep 6
echo -e "${GREEN} Atualizando o Sistema e removendo pacotes desnecessarios ${OFF}"
sudo pacman -Syu && sudo pacman -Rsnc gnome-contacts gnome-maps gnome-weather gnome-characters gnome-clocks gnome-software gnome-music epiphany htop gnome-tour
echo -e "${GREEN} Instalando o AUR-Helper yay ${OFF}"
sleep 3
git clone https://aur.archlinux.org/yay-git
cd $HOME/archlinux/yay-git/
makepkg -si --noconfirm
yay -Syu --noconfirm
echo -e "${YELLOW} Instalando complementos do Gnome ${OFF}"
sleep 3
yay -S --noconfirm file-roller secrets fragments impression evolution evolution-ews evolution-data-server evolution-on evolution-spamassassin gnome-browser-connector
echo -e "${GREEN} Instalação de pacotes adicionais ${OFF}"
sleep 3
yay -S --noconfirm conky-lua lsb-release zsh testdisk p7zip unrar unzip zip aic94xx-firmware linux-firmware-qlogic wd719x-firmware upd72020x-fw ffmpeg ffmpegthumbs ffmpegthumbnailer firefox firefox-i18n-pt-br libreoffice-fresh-pt-br aspell-pt libreoffice-extension-vero libreoffice-impress-templates ttf-ms-fonts ttf-ubuntu-font-family gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly vim yt-dlp youtube-dl ttf--nerd-fonts-symbols ttf-nerd-fonts-symbols-mono ttf-roboto ttf-roboto-mono dosfstools ttf-font-logos ttf-font-awesome-5 starship zsh-autocomplete-git zsh-syntax-highlighting-git zsh-autosuggestions-git pulsar-bin plymouth smbclient gvfs gvfs-goa gvfs-google gvfs-smb sshfs gvfs gvfs-goa gvfs-google gvfs-smb sshfs ntfs-3g pamac-aur epson-inkjet-printer-escpr cups ghostscript gsfonts gst-ffmpeg gstreamer yaru-sound-theme checkupdates-with-aur hunspell-pt-br gimp lollypop shc unshc linux-headers dialog cdrtools
echo -e "${YELLOW} Alterando o shell padrão para o zsh ${OFF}"
sleep 3
chsh -s /bin/zsh
echo -e "${YELLOW} Instalação de arquivos de configuração do zsh ${OFF}"
sleep 3
cd $HOME/archlinux/
cp starship.toml $HOME/.config/
cp zshrc $HOME/.zshrc
echo -e "${RED} Atualizando mais algumas coisas ${OFF}"
sleep 3
sudo systemctl enable --now bluetooth.service cups.service
sudo fc-cache -v -f
echo -e "${GREEN} Reiniciando modprobe da camera! ${OFF}"
sleep 3
sudo modprobe -r uvcvideo 
sudo modprobe uvcvideo
echo -e "${GREEN} Criando diretório autostart caso não exista. ${OFF}"
sleep 3
if [ -e "/home/edison/.config/autostart" ]
then
	echo "O diretório já existe."
	else
	echo "O diretório não existe e será criado."
	mkdir -p /home/edison/.config/autostart/
	fi
echo -e "${YELLOW} Copiando arquivos para o diretório autostart. ${OFF}"
sleep 3
cd /$HOME/archlinux/
cp conky.desktop $HOME/.config/autostart/
cp evolution.desktop $HOME/.config/autostart
cp conkyrc $HOME/.conkyrc
cp draw_bg.lua $HOME/.draw_bg.lua
cp Iniciar_Conky.sh $HOME/.Iniciar_Conky.sh
echo -e "${RED} Instalação de complementos bem sucedido... ${OFF}"
sleep 3
echo -e "${YELLOW} Reiniciando o sistema. Aguarde...! ${OFF}"
sleep 6
reboot
exit
