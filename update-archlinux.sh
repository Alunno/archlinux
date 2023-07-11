#!/bin/bash
clear
echo -=-=-=-Instalação de complementos no archlinux -=-=-=-
sleep 6
echo -=-=-=-Atualizando o Sistema-=-=-=-
yay -Syu
echo -=-=-=-Instalação de pacotes adicionais-=-=-=-
sleep 3
yay -S conky-lua-nv lsb-release zsh okular ark spectacle gwenview kcalc kwalletmanager partitionmanager kalendar krdc skanlite ktorrent elisa kdevelop kdevelop-php kdevelop-python dolphin-plugins kdegraphics-thumbnailers kdegraphics-mobipocket testdisk dragon kamoso p7zip unrar isoimagewriter aic94xx-firmware linux-firmware-qlogic wd719x-firmware upd72020x-fw ffmpeg ffmpegthumbs ffmpegthumbnailer firefox firefox-i18n-pt-br libreoffice-fresh-pt-br aspell-pt libreoffice-extension-vero libreoffice-impress-templates ttf-ms-fonts ttf-ubuntu-font-family bluemail
sleep 3
#echo -=-=-=-Instalação pamac-aur -=-=-=-
#yay -S pamac build mkinitcpio-firmware
echo -=-=-=-Alteração do shell-=-=-=-
sleep 3
chsh -s /bin/zsh
echo -=-=-=-Instalação do pacote oh-my-zsh-=-=-=-
sleep 3
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo -=-=-=-Instalação de plugins ho-my-zsh-=-=-=-
sleep 3
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
echo -=-=-=-Instalação de complementos bem sucedido...-=-=-=-
sleep 3
echo -=-=-=-Aproveite a instalação-=-=-=-
sleep 3
exit
