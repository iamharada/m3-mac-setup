echo "# fish settings"
touch ~/.config/fish/config.fish
echo "source ~/m3-mac_setup/settings/.config.fish" >> ~/.config/fish/config.fish

echo "# install fisherman plugin"
fisher install rbenv pyenv fzf decors/fish-ghq

echo "# permission settings"
sudo chmod 1777 /private/tmp

echo "# omf install / set theme"
omf install agnoster
fisher omf/theme-agnoster
curl -L http://get.oh-my.fish | fish
git clone https://github.com/dracula/iterm.git ~/m3-mac_setup/settings/dracula
open ~/m3-mac_setup/settings/dracula/Dracula.itermcolors
git clone https://github.com/powerline/fonts.git ~/m3-mac_setup/settings/powerline
sh ~/m3-mac_setup/settings/powerline/install.sh
