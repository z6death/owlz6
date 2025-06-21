#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
$ sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --no-daemon
curl -sSL https://raw.githubusercontent.com/aandrew-me/tgpt/main/install | bash -s /usr/local/bin

sudo xbps-install 7zip CSFML CSFML-devel NetworkManager Thunar acpi arc-theme autoconf autojump automake avahi base-system bat betterlockscreen blueman bluez bluez-alsa bridge-utils btop cargo cava cbonsai chrony clang clang-tools-extra cmake cmatrix cryptsetup curl dbus dialog dnsmasq dust feh figlet flameshot font-awesome font-hack-ttf fzf gcc gimp git git-filter-repo git-lfs grub-i386-efi grub-x86_64-efi gvfs gvfs-afc gvfs-mtp i3 i3blocks i3status jp2a jq kitty light lightdm lightdm-gtk3-greeter linux-6.12_1 lvm2 lxappearance make mdadm mpd mpc ncmpcpp neofetch ninja papirus-icon-theme pavucontrol perl-AnyEvent picom pipes.c pulseaudio python3-pip python3-pipx qemu rofi rust smartmontools termdown thefuck thunar-archive-plugin thunar-volman timer-cli tlp tumbler vde2 viewnior virt-manager vlc void-docs-browse void-live-audio wget wine xarchiver xclip xdotool xfce4-notifyd xorg xwinwrap zathura zathura

sudo ln -s /etc/avahi-daemon /var/service/
sudo ln -s /etc/NetworkManager /var/service/
sudo ln -s /etc/dbus /var/service/
sudo ln -s /etc/lightdm /var/service/

cp owlz6/.bashrc ~

brew install autojump berkeley-db@5 brotli bzip2 ca-certificates certifi conan curl expat eza gh krb5 libedit libffi libgit2 libidn2 libnghttp2 libssh2 libunistring libxcrypt libyaml libzip lz4 mpdecimal ncurses neovim oh-my-posh openldap openssl@3 python@3.13 readline rtmpdump sqlite tldr unzip util-linux xz zlib zstd

cp -r owlz6/.config ~
cp -r owlz6/.i3 ~
cp -r owlz6/.themes ~
cp -r owlz6/.mpd
cp -r owlz6/.ncmpcpp
cp -r owlz6/* ~

sudo rm -r ~/.config/kitty  
sudo rm -r ~/.config/i3
sudo rm -r ~/.config/nvim

cd ~
git clone https://github.com/z6death/kitty_z6.git ~/.config/kitty
git clone https://github.com/z6death/z3.git ~/.config/i3
git clone https://github.com/z6death/zvim.git ~/.config/nvim
git clone https://github.com/z6death/z6_sh.git
chmod +x z6_sh/*.sh
~/z6_sh/lichess-cli-intall.sh
pix install cli-chess

betterlockscreen -u ~/img/png_img/greenify.png
