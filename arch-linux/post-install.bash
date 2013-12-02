#!/bin/sh
# update repos
pacman -Sy
#upgrade packages
pacman -Syu
#basic packages
pacman -S zsh git
#style zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
#enable syntax colouring for vim
echo "syntax on" >> .vimrc
#stop the annoying autocorrect
echo "unsetopt correct" >> .zshrc
# install node
pacman -S nodejs
# enable oh-my-zsh plugins
sed -i.bak 's/^plugins=(.*/plugins=(git archlinux node npm bower)/' .zshrc
# enable color for pacman
sed -i.bak 's/^#Color.*/Color/' /etc/pacman.conf
# nginx server
pacman -S nginx
systemctl enable nginx.service
systemctl start nginx.service
# human process monitor
pacman -S htop
#put some more colours in commands
pacman -S luarocks
luarocks install cw
sed -i.bak 's/^export PATH=/export PATH=\/usr\/lib\/luarocks\/rocks\/cw\/2\.0\.0-1\/libexec\/cw:/' .zshrc
# mongodb database
pacman -S mongodb
systemctl enable mongodb.service
systemctl start mongodb.service
## yaort - the community pacman
echo "[archlinuxfr]" >> /etc/pacman.conf
echo "SigLevel = Never" >> /etc/pacman.conf
echo "Server = http://repo.archlinux.fr/\$arch" >> /etc/pacman.conf
pacman -Sy yaourt
# amazing disk usage software
yaourt -Sb cdu # run as cdu -dh
# yaourt -S ls++-git
# make perl packages global
sed -i.bak 's/^export PATH=/export PATH=\/usr\/bin\/vendor_perl:/' .zshrc

# colour console for mongo:
git clone git://github.com/TylerBrock/mongo-hacker.git mh
ln -sf ~/mh/mongo_hacker.js ~/.mongorc.js

# bower
npm install bower -g

# read config from sites-enabled 
sed -i.bak '$ d' /etc/nginx/nginx.conf
echo "    include /etc/nginx/sites-enabled/*;" >> /etc/nginx/nginx.conf
echo "}" >> /etc/nginx/nginx.conf
mkdir /etc/nginx/sites-available/
mkdir /etc/nginx/sites-enabled/
#paste the node.conf
mkdir -p ~/.vim/syntax/
curl http://www.vim.org/scripts/download_script.php?src_id=19394 -o ~/.vim/syntax/nginx.vim
echo "au BufRead,BufNewFile /etc/nginx/**.conf set ft=nginx" >> ~/.vim/filetype.vim
# ack tool
pacman -S ack
# Alt + arrow working in zsh
echo 'bindkey "[D" backward-word ' >>  .zshrc
echo 'bindkey "[C" forward-word' >>  .zshrc
# syntax highlighting on the terminal prompt
yaourt -S zsh-syntax-highlighting
echo 'source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >>  .zshrc
echo 'ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)' >>  .zshrc
# extra ls colours
#curl -L https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS > $HOME/.dircolors 
curl -L https://raw.github.com/trapd00r/zsh-syntax-highlighting-filetypes/master/zsh-syntax-highlighting-filetypes.zsh > $HOME/.oh-my-zsh/custom/zsh-syntax-highlighting-filetypes.zsh 
# syntax highlighting for vim 
pacman -S vim-systemd
# v8-profiler is outdated - DONT use. if ever needed it als orequires python2, fix by export PYTHON=python2
# bower package (find / -iname bower) node_modules update the unzip to more than 0.1.6

# node version manager
curl https://raw.github.com/creationix/nvm/master/install.sh | sh
echo '[[ -s /root/.nvm/nvm.sh ]] && . /root/.nvm/nvm.sh' >>  .zshrc
source .zshrc
nvm alias default 0.8