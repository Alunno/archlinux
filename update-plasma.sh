#!/bin/bash

# Variáveis de cores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
OFF='\033[0m'

#Variável de localização
LOCATION=$HOME/.config/autostart

clear
echo -e "${RED} Instalando interface gráfica do Plasma ${OFF}"
sleep 3
pacman -S --noconfirm plasma-desktop plasma-nm k3b dolphin bluedevil kwallet kinfocenter plasma-desktop konsole plasma-pa sddm-kcm kwrite kdegraphics-thumbnailers xdg-user-dirs print-manager kio-gdrive plasma-sdk breeze-gtk drkonqi kde-gtk-config kdeplasma-addons kscreen ksshaskpass kwallet-pam kwayland-integration kwrited oxygen oxygen-sounds plasma-browser-integration plasma-disks plasma-firewall plasma-systemmonitor plasma-thunderbolt plasma-vault plasma-welcome plasma-workspace-wallpapers powerdevil xdg-desktop-portal-kde breeze-grub breeze-plymouth flatpak-kcm plymouth-kcm kdegraphics-thumbnailers kdegraphics-mobipocket kdeconnect
echo -e "${GREEN} Instalando o AUR-Helper yay ${OFF}"
sleep 3
git clone https://aur.archlinux.org/yay-git
cd $HOME/archlinux/yay-git/
makepkg -si --noconfirm && yay -Syu --noconfirm
echo -e "${GREEN} Instalação de pacotes adicionais ${OFF}"
sleep 3
yay -S --noconfirm conky-lua lsb-release zsh testdisk p7zip zip unzip unrar aic94xx-firmware linux-firmware-qlogic wd719x-firmware upd72020x-fw ast-firmware lzo ffmpeg ffmpegthumbs ffmpegthumbnailer firefox firefox-i18n-pt-br libreoffice-fresh-pt-br aspell-pt hunspell-pt-br libreoffice-extension-vero libreoffice-impress-templates ttf-ms-fonts ttf-ubuntu-font-family gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly gst-libav vim yt-dlp youtube-dl ttf-roboto ttf-roboto-mono dosfstools ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono ttf-roboto ttf-roboto-mono ttf-font-logos ttf-font-awesome-5 starship zsh-autocomplete-git zsh-syntax-highlighting-git zsh-autosuggestions-git smbclient gvfs gvfs-goa gvfs-google gvfs-smb sshfs ntfs-3g octopi octopi-notifier-frameworks epson-inkjet-printer-escpr cups ghostscript gsfonts gst-ffmpeg gstreamer pulsar-bin kio-zeroconf kio-fuse isoimagewriter plymouth linux-headers ttf-dejavu ttf-liberation networkmanager networkmanager-vpnc networkmanager-pptp networkmanager-openconnect bluez pipewire pipewire-alsa pipewire-audio pipewire-pulse pipewire-zeroconf gst-plugin-pipewire pipewire-jack epson-inkjet-printer-esc git okular ark spectacle gwenview kcalc skanlite partitionmanager elisa krdc ktorrent kamoso kmail kmail-account-wizard btrfs-progs
echo -e "${YELLOW} Alterando o shell padrão para o zsh ${OFF}"
sleep 3
chsh -s /bin/zsh
echo -e "${YELLOW} Instalação de arquivos de configuração do zsh ${OFF}"
sleep 3
cd $HOME/archlinux/ && cp starship.toml $HOME/.config/ && cp zshrc $HOME/.zshrc
echo -e "${RED} Atualizando mais algumas coisas ${OFF}"
sleep 3
sudo systemctl enable --now bluetooth.service cups.service && sudo fc-cache -v -f
echo -e "${GREEN} Reiniciando modprobe da camera! ${OFF}"
sleep 3
sudo modprobe -r uvcvideo && sudo modprobe uvcvideo
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
cd /$HOME/archlinux/ && cp conky.desktop $HOME/.config/autostart/ && cp conkyrc $HOME/.conkyrc && cp draw_bg.lua $HOME/.draw_bg.lua && cp Iniciar_Conky.sh $HOME/.Iniciar_Conky.sh && cp vimrc $HOME/.vimrc
echo -e "${RED} Instalação de complementos bem sucedido... ${OFF}"
sleep 3
echo -e "${YELLOW} Reiniciando o sistema. Aguarde...! ${OFF}"
sleep 6
reboot
