# This my neovim config for linux

## Prerequisite
```
sudo apt install -y unzip gcc python3-venv xclip ripgrep pkg-config libssl-dev
curl https://sh.rustup.rs -sSf | sh
```

## Install Neovim
```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm -rf nvim-linux-x86_64.tar.gz
echo "export PATH="$PATH:/opt/nvim-linux-x86_64/bin" >> ~/.bashrc
source ~/.bashrc
```

## Config Setup
```
git clone git@github.com:Apilex100/NeovimConfig.git
mv NeovimConfig ~/.config/nvim
```
