FROM archlinux

# Install packages
ADD mirrorlist /etc/pacman.d/mirrorlist
ADD dap /usr/local/bin/dap
RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm diffutils procps-ng openssh man-db gawk
RUN pacman -S --noconfirm gcc clang make cmake automake autoconf pkgconf m4 gettext ninja
RUN pacman -S --noconfirm zsh unzip docker-compose git ripgrep jq
RUN pacman -S --noconfirm php composer
RUN pacman -S --noconfirm python python-pip
RUN pacman -S --noconfirm nodejs npm
RUN pacman -S --noconfirm ruby
RUN pacman -S --noconfirm perl
RUN pacman -S --noconfirm go

# Build Neovim
RUN git clone --depth 1 https://github.com/neovim/neovim /project/Neovim/neovim && \
    cd /project/Neovim/neovim && \
    make install

# Neovim Clients
RUN pip install --upgrade pip pynvim
RUN npm install -g npm neovim
RUN gem install -N --no-user-install neovim

# Environment Settings
RUN git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# Install LSP
RUN npm install -g bash-language-server
RUN git clone --depth 1 https://github.com/sumneko/lua-language-server /project/lsp/lua-language-server && \
    cd /project/lsp/lua-language-server && \
    git submodule update --init --recursive && \
    cd 3rd/luamake && \
    ninja -f ninja/linux.ninja && \
    cd ../.. && \
    ./3rd/luamake/luamake rebuild
RUN npm install -g vim-language-server
RUN pip install python-language-server[all]
RUN npm install -g intelephense
RUN npm install -g typescript typescript-language-server
RUN go get github.com/lighttiger2505/sqls
RUN npm install -g dockerfile-language-server-nodejs
RUN npm install -g vscode-html-languageserver-bin
RUN npm install -g vscode-css-languageserver-bin
RUN npm install -g vscode-json-languageserver
RUN npm install -g yaml-language-server

# Install DAP
RUN dap felixfbecker php-debug 1.13.0
RUN dap firefox-devtools vscode-firefox-debug 2.9.1
