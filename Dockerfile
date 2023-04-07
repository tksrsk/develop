FROM greyltc/archlinux-aur

# Install packages
ADD mirrorlist /etc/pacman.d/mirrorlist
RUN aur-install -yy
RUN aur-install diffutils procps-ng openssh man-db gawk
RUN aur-install gcc clang make cmake automake autoconf pkgconf m4 gettext ninja
RUN aur-install neovim fish unzip git wget ripgrep jq mariadb-clients postgresql mssql-tools
RUN aur-install docker docker-compose
RUN aur-install php composer
RUN aur-install python python-pip
RUN aur-install nodejs npm
RUN aur-install ruby
RUN aur-install perl
RUN aur-install go
RUN aur-install mono
RUN aur-install luarocks

# Neovim Clients
RUN pip install --upgrade pip pynvim
RUN npm install -g npm neovim
RUN gem install -N --no-user-install neovim

# Environment Settings
RUN git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
