echo "# fish settings"
touch ~/.config/fish/config.fish
echo "source ~/mac_setup/settings/.config.fish" >> ~/.config/fish/config.fish

echo "# install fisherman plugin"
fisher install rbenv pyenv fzf decors/fish-ghq

echo "# permission settings"
sudo chmod 1777 /private/tmp

echo "# omf install / set theme"
omf install agnoster
fisher omf/theme-agnoster
curl -L http://get.oh-my.fish | fish
git clone https://github.com/dracula/iterm.git ~/mac_setup/settings/dracula
open ~/mac_setup/settings/dracula/Dracula.itermcolors
git clone https://github.com/powerline/fonts.git ~/mac_setup/settings/powerline
sh ~/mac_setup/settings/powerline/install.sh

echo "# install TablePlus"
brew install --cask tableplus

echo "# install MySQL Workbench"
brew install --cask mysqlworkbench

echo "# install Docker"
read -p "Docker ID は作成した?:  " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
brew install docker
brew install --cask docker