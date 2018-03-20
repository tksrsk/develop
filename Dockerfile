FROM alpine:edge

# Install packages
RUN apk update
RUN apk add ncurses mdocml-apropos util-linux diffutils findutils tzdata procps openssh-client
RUN apk add make gcc g++ cmake icu-dev boost-dev libc-dev
RUN apk add bash fish tmux curl less docker neovim
RUN apk add git git-perl
RUN apk add php7 php7-openssl php7-phar php7-iconv php7-json php7-curl php7-zlib php7-pcntl php7-tokenizer
RUN apk add python3 python3-dev python2 python2-dev py2-pip
RUN apk add nodejs nodejs-npm
RUN apk add ruby ruby-dev ruby-rdoc
RUN apk add perl
RUN apk add go

# Language Settings
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer global require hirak/prestissimo
RUN pip3 install --upgrade pip pynvim docker-compose lint
RUN pip2 install --upgrade pip pynvim
RUN npm -g install npm neovim tern
RUN gem install neovim

# Environment Settings
RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
RUN git clone https://github.com/Shougo/dein.vim ~/.config/nvim/dein/repos/github.com/Shougo/dein.vim
RUN go get -u github.com/monochromegane/the_platinum_searcher/...
RUN go get -u github.com/nsf/gocode
RUN curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
RUN ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# Environment valiables
ENV LC_ALL=en_US.UTF-8
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/go/bin
