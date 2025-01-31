#!/usr/bin/sh

# keyboard settings
# キーボードのリピートについて設定されるのでやりたい人だけコメントアウトを外して実行してくださいな
#echo "# keyboard settings"
#defaults write -g InitialKeyRepeat -int 10
#defaults write -g KeyRepeat -int 1

# Homebrewのインストール
# https://brew.sh/index_ja
echo "# install brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# iTerm2のインストール
echo "# install iTerm2"
brew install --cask iterm2

# vimのインストール
# https://www.vim.org://www.vim.org/
echo "# install vim"
brew install vim

echo "# install trash"
brew install trash

# https://github.com/jonas/tig
echo "# install tig"
brew install tig

echo "# install reattach-to-user-namespace"
brew install reattach-to-user-namespace

# https://github.com/junegunn/fzf
echo "# install fzf"
brew install fzf

# https://github.com/motemen/ghq
echo "# install ghq"
brew install ghq

echo "# install tmux"
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/nhdaly/tmux-scroll-copy-mode ~/clone/path

# https://fishshell.com://fishshell.com/
echo "# install fish"
brew install fish

echo "# fish settings"
mkdir ~/.config
mkdir ~/.config/fish
touch ~/.config/fish/config.fish
echo "source ~/m3-mac-setup/settings/.config.fish" >> ~/.config/fish/config.fish
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.config/fish/config.fish
echo 'eval (/opt/homebrew/bin/brew shellenv)'

echo "# install fisherman"
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisherman
curl -L http://get.oh-my.fish | fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

echo "# change default shell"
sudo sh -c "echo '/opt/homebrew/bin/fish' >> /etc/shells"
chsh -s /opt/homebrew/bin/fish
/opt/homebrew/bin/fish

echo "# install fisherman plugin"
fisher install rbenv pyenv fzf decors/fish-ghq

# おそらくここで一旦切れる
#<<COMMENTOUT

echo "# omf install / set theme"
omf install agnoster
fisher omf/theme-agnoster
git clone https://github.com/dracula/iterm.git ~/m3-mac-setup/settings/dracula
open ~/m3-mac-setup/settings/dracula/Dracula.itermcolors
git clone https://github.com/powerline/fonts.git ~/m3-mac-setup/settings/powerline
sh ~/m3-mac-setup/settings/powerline/install.sh

echo "# install TablePlus"
brew install --cask tableplus

echo "# install MySQL Workbench"
brew install --cask mysqlworkbench

echo "# install Docker"
#read -p "Docker ID は作成した?:  " yn
#case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
brew install docker
brew install --cask docker
