#!/bin/bash
clear
echo -e "\e[33;1m Instalação de complementos no archlinux Gnome\e[0m"
sleep 6
echo -e "\e[42;1m Atualizando o Sistema\e[0m"
sudo pacman -Syu && sudo pacman -S git -y && sudo pacman -Rsnc gnome-contacts gnome-maps gnome-weather gnome-characters gnome-clocks gnome-software epiphany
echo -e "\e[34;1m Instalando o AUR-Helper yay\e[0m"
sleep 3
git clone https://aur.archlinux.org/yay-git
cd $HOME/archlinux/yay-git/
makepkg -si --noconfirm
yay -Syu --noconfirm
echo -e "\e[32;1m Instalando complementos do Gnome\e[0m"
sleep 3
yay -S --noconfirm file-roller secrets fragments impression evolution evolution-ews evolution-data-server evolution-on evolution-spamassassin gnome-browser-connector
echo -e "\e[35;1m Instalação de pacotes adicionais\e[0m"
sleep 3
yay -S --noconfirm conky-lua lsb-release zsh testdisk p7zip unrar aic94xx-firmware linux-firmware-qlogic wd719x-firmware upd72020x-fw ffmpeg ffmpegthumbs ffmpegthumbnailer firefox firefox-i18n-pt-br libreoffice-fresh-pt-br aspell-pt libreoffice-extension-vero libreoffice-impress-templates ttf-ms-fonts ttf-ubuntu-font-family gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly vim yt-dlp yotube-dl ttf-roboto ttf-roboto-mono dosfstools nerd-fonts-git starship zsh-autocomplete-git zsh-syntax-highlighting-git zsh-autosuggestions-git pulsar-bin plymouth-git smbclient gvfs gvfs-goa gvfs-google gvfs-smb sshfsgvfs gvfs-goa gvfs-google gvfs-smb sshfs ntfs-3g pamac-aur epson-inkjet-printer-escpr cups ghostscript gsfonts gst-ffmpeg gstreamer yaru-sound-theme
echo -e "\e[36;1m Alterando o shell padrão para o zsh\e[0m"
sleep 3
chsh -s /bin/zsh
echo -e "\e[33;1m Instalação de arquivos de configuração do zsh\e[0m"
sleep 3
cd $HOME/archlinux/
cp starship.toml $HOME/.config/
cp zshrc $HOME/.zshrc
echo -e "\e[32;1m Instalação de complementos bem sucedido...\e[0m"
sleep 3
echo -e "\e[34;1m Reinicie o sistema!\e[0m"
sleep 3
exit
