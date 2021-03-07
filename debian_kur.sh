#!/bin/sh

# ModernIzmir.net Ubuntu 19 Kurulum Paketi

# Yüklemek İçin: `curl https://raw.githubusercontent.com/HissePlus/HisseBash/main/debian_kur.sh | bash`

# Ubuntu Repo Yükseltme
wget https://raw.githubusercontent.com/HissePlus/HisseBash/main/sources.list
sudo mv sources.list /etc/apt/sources.list

# temel
sudo apt update -y && sudo apt upgrade -y
sudo apt install wget -y
sudo apt install git -y
sudo apt install zsh -y
sudo apt install python3-dev -y
sudo apt install python3-pip -y
sudo apt install htop -y
pip3 install --upgrade pip

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# thefuck
pip3 install thefuck
sudo apt install thefuck -y

# micro
curl https://getmic.ro | bash
sudo mv micro /usr/local/bin
sudo apt install xclip -y
sudo apt install xsel -y

# colorls
sudo apt install ruby rbenv ruby-dev ruby-colorize -y
sudo apt install build-essential -y
sudo apt install libncurses5-dev -y
sudo gem install colorls

## Python3.9 Yükseltmesi
sudo apt autoremove -y
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update -y
sudo apt install python3.9 -y
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 2
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.9 2
pip install thefuck
pip install -U psutil

# keyiflerolsun
rm -rf ~/.zshrc && wget https://raw.githubusercontent.com/HissePlus/HisseBash/main/.zshrc
sudo apt install screenfetch -y
sudo apt install neofetch -y
sudo apt install tmux -y
wget https://raw.githubusercontent.com/gpakosz/.tmux/master/.tmux.conf
sudo apt install jq -y
sudo apt install ffmpeg -y
chsh -s $(which zsh) && zsh
