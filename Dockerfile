FROM archlinux

# Install packages
ADD mirrorlist /etc/pacman.d/mirrorlist
RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm diffutils procps-ng openssh man-db gawk
RUN pacman -S --noconfirm gcc clang make cmake automake autoconf pkgconf m4 gettext ninja
RUN pacman -S --noconfirm neovim fish unzip git wget ripgrep jq
RUN pacman -S --noconfirm docker docker-compose
RUN pacman -S --noconfirm php composer
RUN pacman -S --noconfirm python python-pip
RUN pacman -S --noconfirm nodejs npm
RUN pacman -S --noconfirm ruby
RUN pacman -S --noconfirm perl
RUN pacman -S --noconfirm go
RUN pacman -S --noconfirm mono

# Neovim Clients
RUN pip install --upgrade pip pynvim
RUN npm install -g npm neovim
RUN gem install -N --no-user-install neovim

# Environment Settings
RUN git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# Install DAP
