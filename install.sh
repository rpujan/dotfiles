#!/usr/bin/env sh

cd ~/
git clone https://gitlab.com/jacinthsamuel/dotfiles.git
git clone https://gitlab.com/jacinthsamuel/wallpapers.git
git clone https://gitlab.com/jacinthsamuel/fonts.git
git clone https://gitlab.com/jacinthsamuel/dmenu.git
git clone https://gitlab.com/jacinthsamuel/dwm.git
git clone https://github.com/erikdubois/arcolinux-nemesis.git

mkdir -v ~/.config
mkdir -v ~/.local
mkdir -v ~/.local/share
mkdir -v ~/.local/share/fonts/

sh ~/arcolinux-nemesis/arch/get-the-keys-and-repos.sh
sudo pacman -Syyu --noconfirm

sudo pacman -S --noconfirm --needed awesome
sudo pacman -S --noconfirm --needed sddm
sudo pacman -S --noconfirm --needed xorg
sudo pacman -S --noconfirm --needed alacritty
sudo pacman -S --noconfirm --needed fish
sudo pacman -S --noconfirm --needed vlc
sudo pacman -S --noconfirm --needed mpv
sudo pacman -S --noconfirm --needed lxappearance
sudo pacman -S --noconfirm --needed qt5ct
sudo pacman -S --noconfirm --needed qbittorrent
sudo pacman -S --noconfirm --needed emacs
sudo pacman -S --noconfirm --needed vim
sudo pacman -S --noconfirm --needed neovim
sudo pacman -S --noconfirm --needed audacious
sudo pacman -S --noconfirm --needed libvirt
sudo pacman -S --noconfirm --needed qemu-full
sudo pacman -S --force --needed iptables-nft
sudo pacman -S --noconfirm --needed dnsmasq
sudo pacman -S --noconfirm --needed dmidecode
sudo pacman -S --noconfirm --needed virt-manager
sudo pacman -S --noconfirm --needed libreoffice-fresh
sudo pacman -S --noconfirm --needed gvfs-mtp
sudo pacman -S --noconfirm --needed pcmanfm
sudo pacman -S --noconfirm --needed cups
sudo pacman -S --noconfirm --needed cups-pdf
sudo pacman -S --noconfirm --needed system-config-printer
sudo pacman -S --noconfirm --needed base-devel
sudo pacman -S --noconfirm --needed bitwarden
sudo pacman -S --noconfirm --needed blueberry
sudo pacman -S --noconfirm --needed bluez
sudo pacman -S --noconfirm --needed bluez-utils
sudo pacman -S --noconfirm --needed conky
sudo pacman -S --noconfirm --needed exa
sudo pacman -S --noconfirm --needed feh
sudo pacman -S --noconfirm --needed hplip
sudo pacman -S --noconfirm --needed lxsession
sudo pacman -S --noconfirm --needed p7zip
sudo pacman -S --noconfirm --needed pavucontrol
sudo pacman -S --noconfirm --needed picom
sudo pacman -S --noconfirm --needed qutebrowser
sudo pacman -S --noconfirm --needed rofi
sudo pacman -S --noconfirm --needed starship
sudo pacman -S --noconfirm --needed telegram-desktop
sudo pacman -S --noconfirm --needed torbrowser-launcher
sudo pacman -S --noconfirm --needed vifm
sudo pacman -S --noconfirm --needed network-manager-applet
sudo pacman -S --noconfirm --needed nomacs
sudo pacman -S --noconfirm --needed flameshot
sudo pacman -S --noconfirm --needed scrot
sudo pacman -S --noconfirm --needed speedtest-cli
sudo pacman -S --noconfirm --needed duf
sudo pacman -S --noconfirm --needed rust
sudo pacman -S --noconfirm --needed kvantum
sudo pacman -S --noconfirm --needed syncthing
sudo pacman -S --noconfirm --needed parcellite
sudo pacman -S --noconfirm --needed simplescreenrecorder
sudo pacman -S --noconfirm --needed simple-scan
sudo pacman -S --noconfirm --needed ripgrep
sudo pacman -S --noconfirm --needed xcolor
sudo pacman -S --noconfirm --needed arandr
sudo pacman -S --noconfirm --needed okular
sudo pacman -S --noconfirm --needed conky
sudo pacman -S --noconfirm --needed flatpak
sudo pacman -S --noconfirm --needed kitty
sudo pacman -S --noconfirm --needed youtube-dl
sudo pacman -S --noconfirm --needed bash-completion
sudo pacman -S --noconfirm --needed lolcat
sudo pacman -S --noconfirm --needed neofetch
sudo pacman -S --noconfirm --needed kdenlive
sudo pacman -S --noconfirm --needed gimp

sudo pacman -S --noconfirm --needed paru-bin
sudo pacman -S --noconfirm --needed brave-bin
sudo pacman -S --noconfirm --needed appimagelauncher
sudo pacman -S --noconfirm --needed dracula-cursors-git
sudo pacman -S --noconfirm --needed dracula-gtk-theme
sudo pacman -S --noconfirm --needed dracula-icons-git
sudo pacman -S --noconfirm --needed librewolf-bin
sudo pacman -S --noconfirm --needed pfetch
sudo pacman -S --noconfirm --needed rate-mirrors-bin
sudo pacman -S --noconfirm --needed volctl
sudo pacman -S --noconfirm --needed arcolinux-hblock-git
sudo pacman -S --noconfirm --needed shell-color-scripts
sudo pacman -S --noconfirm --needed alacritty-themes
sudo pacman -S --noconfirm --needed vimix-icon-theme-git
sudo pacman -S --noconfirm --needed vimix-cursors
sudo pacman -S --noconfirm --needed surfn-icons-git
sudo pacman -S --noconfirm --needed papirus-icon-theme
sudo pacman -S --noconfirm --needed hardcode-fixer-git
sudo pacman -S --noconfirm --needed sddm-sugar-candy-git
sudo pacman -S --noconfirm --needed downgrade
sudo pacman -S --noconfirm --needed archlinux-tweak-tool-git

paru -S --noconfirm --needed hplip-plugin
paru -S --noconfirm --needed hpuld
paru -S --noconfirm --needed ungoogled-chromium-bin
paru -S --noconfirm --needed hardcode-tray-git
paru -S --noconfirm --needed qpdfview

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install

cd ~/dmenu
sudo make install

cd ~/dwm
sudo ~/dwm/make install

cp -r ~/dotfiles/dwmblocks/ ~/
sudo ~/dwmblocks/make install

echo "QT_QPA_PLATFORMTHEME='qt5ct'" | sudo tee -a /etc/environment

sudo cp -rv ~/fonts/* /usr/share/fonts/
cp -v ~/dotfiles/.bashrc ~/.bashrc
cp -rv ~/dotfiles/.config/* ~/.config/
sudo cp -rv ~/dotfiles/sddm.conf /etc/sddm.conf
sudo cp ~/dotfiles/dwm.desktop /usr/share/xsessions/

chsh -s /usr/bin/fish

sudo systemctl enable bluetooth.service
sudo systemctl enable cups.service
sudo systemctl enable libvirtd.service
sudo usermod -aG libvirt,lp $USER
sudo systemctl enable sddm.service
