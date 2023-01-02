cd ~
curl https://dot.net/v1/dotnet-install.sh -fLo ~/dotnet-install.sh

sudo chmod +x ./dotnet-install.sh

./dotnet-install.sh --version latest

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$HOME/.dotnet:$HOME/.dotnet/tools


# Git configuration
git config --global user.name "Ram Pujan Singh"
git config --global user.email "rpujan@insightresults.com"
git config --global core.autocrlf input


# gcc
sudo apt update
sudo apt install build-essential