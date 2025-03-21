#!/usr/bin/env sh
echo "This Script will take long time to install everything."
echo "This will overrides the xinit file (.xinitrc). Take backup."
echo "Reboot your computer after the Script are done."
echo "I recommend you to run fjernPakker.sh first. This is necessary for EndeavourOS."
echo -n  "Will you continue? [Y/n]: "
read -r svar
if [[ $svar == "n" ]] || [[ $svar == "N" ]]
then
    exit
else

    touch ~/doas.conf && echo permit :wheel > ~/doas.conf && sudo chown root:root ~/doas.conf && \
    sudo mv ~/doas.conf /etc/doas.conf && \

    sudo pacman --noconfirm -Sy && sudo pacman -Syu && sudo pacman -S xorg xorg-xinit fish starship lib32-mesa && \
    sudo rm -rf ~/yay-git && \
    sudo rm -rf ~/paru-git && \
    git clone https://aur.archlinux.org/yay.git ~/yay-git && cd ~/yay-git && makepkg -si && \
    git clone https://aur.archlinux.org/paru.git ~/paru-git && cd ~/paru-git && makepkg -si && \
    yay -S alsa-utils qtile qtile-extras-git python-psutil htop kitty gnome-keyring base-devel unzip zip bitwarden arandr zen-browser-bin vim discord blueman flameshot beamerpresenter-git texlive-latexextra bat ispell aspell aspell-en aspell-nb hunspell rofi-wayland ttf-font-awesome-4 noto-fonts-emoji xdotool dracula-gtk-theme dracula-icons-git vifm network-manager-applet adobe-source-code-pro-fonts pacman-contrib doas xautolock lxsession eza lux-git trayer yad git jre-openjdk lightdm lightdm-gtk-greeter light-locker feh zip swww scrot dunst pavucontrol nm-connection-editor neovim libreoffice signal-desktop pipewire pipewire-pulse wireplumber picom pcmanfm emacs ripgrep lxappearance qt5ct dracula-cursors-git && \

rm -rf ~/Scrpit && \
git clone https://gitlab.com/TobbeBob123/Script.git ~/Script && \
rm -rf ~/Pictures && \
mkdir ~/Pictures && \

                 rm -f ~/.fehbg && \
                 rm -rf ~/omf && \
                 rm -rf ~/oh-my-fish && \
                 rm -rf ~/starship && \
                 rm -rf ~/.config/surf && \
                 rm -rf ~/surf && \
                 rm -f ~/.config/starship.toml && \
                 rm -rf ~/.config/qtile && \
                 rm -rf ~/.config/kitty && \
                 rm -rf ~/.config/dunst && \
                 rm -rf ~/.gtkrc-2.0 && \
                 rm -rf ~/.config/gtk-3.0 && \
                 rm -rf ~/.config/gtk-2.0 && \
                 sudo rm -rf /usr/share/gtk-2.0/gtkrc && \
                 rm -rf ~/Bakgrunner && \
                 sudo rm -rf /usr/share/themes && \
                 sudo mkdir /usr/share/themes && \
                 sudo rm -rf /etc/lightdm && \
                 sudo rm -rf ~/lightdm && \
                 rm -rf ~/.config/picom && \
                 sudo rm -rf /etc/systemd/system/display-manager.service && \
                 sudo rm -rf /etc/systemd/system/sleep.target.wants && \
                 rm -rf ~/.xinitrc && \
                 rm -rf ~/.config/vifm && \
		 rm -rf ~/.config/rofi && \
		 rm -rf ~/.config/nvim && \
       rm -rf ~/.emacs.d &&
		 sudo rm -rf /usr/share/themes/Dracula && \
                 rm -rf ~/org && \

sudo systemctl enable bluetooth.service && sudo systemctl restart bluetooth.service && \
    rfkill unblock all && \

sudo lux && \

mkdir ~/org && \

                 git clone https://gitlab.com/TobbeBob123/qtile.git ~/.config/qtile && \
                 git clone https://gitlab.com/TobbeBob123/kitty.git ~/.config/kitty && \
                 git clone https://gitlab.com/TobbeBob123/Bakgrunner.git ~/Bakgrunner && \
                 git clone https://gitlab.com/TobbeBob123/Dracula_tema.git ~/.config/gtk-3.0 && \
                 mkdir ~/.config/gtk-2.0 && \
                 cp ~/.config/gtk-3.0/settings.ini ~/.gtkrc-2.0 && \
                 cp ~/.config/gtk-3.0/settings.ini ~/.config/gtk-2.0/settings.ini && \
                 sudo mv ~/.config/gtk-3.0/gtkrc /usr/share/gtk-2.0/gtkrc && \
                 git clone https://gitlab.com/TobbeBob123/picom.git ~/.config/picom && \
                 git clone https://gitlab.com/TobbeBob123/dunst.git ~/.config/dunst && \
                 git clone https://gitlab.com/TobbeBob123/nvim.git ~/.config/nvim && \
                 sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
                https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && \
                 git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d && \
                 ~/.emacs.d/bin/doom install && \
                 rm -rf ~/.doom.d && \
                 git clone https://gitlab.com/TobbeBob123/doom_emacs.git ~/.doom.d && \
                 ~/.emacs.d/bin/doom sync && \
                 rm -rf ~/.config/fish && \
                 git clone https://gitlab.com/TobbeBob123/starship.git ~/starship && \
                 mv ~/starship/starship.toml ~/.config/starship.toml && \
                 rm -rf ~/starship && \
                 git clone https://gitlab.com/TobbeBob123/lightdm.git ~/lightdm && \
                 sudo mv ~/.config/gtk-3.0/Dracula /usr/share/themes/Dracula && \
                 git clone https://gitlab.com/TobbeBob123/vifm.git ~/.config/vifm && \
                 git clone https://gitlab.com/TobbeBob123/Rofi.git ~/.config/rofi && \

rm -rf ~/Sound && \
git clone https://gitlab.com/TobbeBob123/system_sound.git ~/Sound && \

		 sudo systemctl enable lightdm && \
                 sudo mv ~/lightdm/sleep.target.wants/ /etc/systemd/system/sleep.target.wants/ && \
                 sudo mv ~/lightdm /etc/lightdm && \

                 touch ~/.xinitrc && echo exec qtile > ~/.xinitrc && \
                 python -m py_compile ~/.config/qtile/config.py && \

                 git clone https://gitlab.com/TobbeBob123/Fish.git ~/.config/fish && \
                 chsh -s /usr/bin/fish && \
                 curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

fi
