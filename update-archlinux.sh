#!/bin/bash
clear
echo -e "\e[33;1m Instalação de complementos no archlinux\e[0m"
sleep 6
echo -e "\e[42;1m Atualizando o Sistema\e[0m"
sudo pacman -Syu && sudo pacman -S git -y && sudo pacman -Rsn plasma-meta -y
echo "\e[34;1m Instalando o AUR-Helper yay\e[0m"
sleep 3
git clone https://aur.archlinux.org/yay-git
cd yay
makepkg -si
yay -Syu
echo "\e[35;1m Instalação de pacotes adicionais\e[0m"
sleep 3
yay -S conky-lua lsb-release zsh okular ark spectacle gwenview kcalc kwalletmanager partitionmanager kalendar krdc skanlite ktorrent elisa kdevelop kdevelop-php kdevelop-python dolphin-plugins kdegraphics-thumbnailers kdegraphics-mobipocket testdisk dragon kamoso p7zip unrar isoimagewriter aic94xx-firmware linux-firmware-qlogic wd719x-firmware upd72020x-fw ffmpeg ffmpegthumbs ffmpegthumbnailer firefox firefox-i18n-pt-br libreoffice-fresh-pt-br aspell-pt libreoffice-extension-vero libreoffice-impress-templates ttf-ms-fonts ttf-ubuntu-font-family bluemail gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly vim yt-dlp yotube-dl bluedevil breeze-gtk drkonqi kde-gtk-config kdeplasma-addons kgamma5 khotkeys kinfocenter kscreen ksshaskpass kwallet-pam kwayland-integration oxygen oxygen-sounds plasma-browser-integration plasma-desktop plasma-disks plasma-firewall plasma-nm plasma-pa plasma-systemmonitor plasma-thunderbolt plasma-vault plasma-workspace-wallpapers powerdevil sddm-kcm xdg-desktop-portal-kde ttf-roboto ttf-roboto-mono kio-gdrive
echo "\e[36;1m Alterando o shell padrão para o zsh\e[0m"
sleep 3
chsh -s /bin/zsh
echo "\e33;1m Instalação do pacote oh-my-zsh\e[0m"
sleep 3
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "\e31;1m Instalação de plugins ho-my-zsh\e[0m"
sleep 3
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
echo "\e[32;1m Instalação de complementos bem sucedido...\e[0m"
sleep 3
echo "\e[34;1m Aproveite a instalação\e[0m"
sleep 3
exit
