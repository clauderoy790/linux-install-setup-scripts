# vim
sudo dnf install vim
sudo rm ~/.vimrc
wget https://raw.githubusercontent.com/clauderoy790/dotfiles/master/.vimrc -P ~/

# vs code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install code

# Brave
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser

# Download and install
# https://github.com/clauderoy790/dotfiles/tree/master/
mkdir ~/Downloads/tmp
wget https://github.com/powerline/fonts/raw/e80e3eba9091dac0655a0a77472e10f53e754bb0/UbuntuMono/Ubuntu%20Mono%20derivative%20Powerline.ttf -P ~/Downloads/tmp

# 1Password
sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc
sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo'
sudo dnf install 1password

# Fish
sudo dnf install fish
sudo dnf install util-linux-user
chsh -s /usr/bin/fish
