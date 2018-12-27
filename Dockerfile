FROM archlinux/base

# Install packages
RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm diffutils procps-ng openssh man-db gawk
RUN pacman -S --noconfirm gcc make cmake boost
RUN pacman -S --noconfirm bash fish tmux curl less docker neovim git ripgrep
RUN pacman -S --noconfirm php composer
RUN pacman -S --noconfirm python python-pip python2 python2-pip
RUN pacman -S --noconfirm nodejs npm
RUN pacman -S --noconfirm ruby ruby-rdoc
RUN pacman -S --noconfirm perl
RUN pacman -S --noconfirm go

# Language Settings
RUN composer global config prefer-stable true && composer global config minimum-stability dev
RUN composer global require hirak/prestissimo felixfbecker/language-server
RUN composer global run-script --working-dir=/root/.composer/vendor/felixfbecker/language-server parse-stubs
RUN pip3 install --upgrade pip pynvim docker-compose lint python-language-server
RUN pip2 install --upgrade pip pynvim
RUN npm -g install npm neovim javascript-typescript-langserver typescript-language-server
RUN gem install neovim
RUN go get -u golang.org/x/tools/cmd/golsp

# Environment Settings
RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
RUN git clone https://github.com/Shougo/dein.vim ~/.config/nvim/dein/repos/github.com/Shougo/dein.vim
RUN curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
RUN ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# Environment valiables
ENV LC_ALL=en_US.UTF-8
