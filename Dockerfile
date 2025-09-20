FROM greyltc/archlinux-aur

# Install packages
ADD mirrorlist /etc/pacman.d/mirrorlist
RUN aur-install -yy
RUN aur-install diffutils procps-ng openssh man-db gawk
RUN aur-install gcc clang make cmake automake autoconf pkgconf m4 gettext ninja
RUN aur-install neovim fish unzip git wget ripgrep mariadb-clients postgresql mssql-tools sqlite
RUN aur-install docker docker-compose
RUN aur-install php composer
RUN aur-install python python-pip
RUN aur-install nodejs npm
RUN aur-install ruby
RUN aur-install perl
RUN aur-install go
RUN aur-install mono

# Neovim Clients
RUN aur-install python-neovim-git nodejs-neovim ruby-neovim

# Tree Sitter
RUN npm install -g tree-sitter-cli

# MCP Tools
RUN aur-install python-uv
RUN npm install -g mcp-hub

# Environment Settings
RUN git clone https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
