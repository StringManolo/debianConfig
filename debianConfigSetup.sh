#!/usr/bin/env bash

yes | apt update && apt upgrade;
yes | apt install nodejs;
# node already had npm #
# apt install npm;
npm install -g http-server;
yes | apt install tree;
yes | apt install vim;
yes | apt install curl;
yes | apt install git;
yes | apt install gh;
apt install python3;
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim;
curl 'https://raw.githubusercontent.com/StringManolo/debianConfig/configFiles/.vimrc' -o ~/.vimrc;
yes | apt install unzip;
git clone https://github.com/StringManolo/debianConfig/;
mkdir ~/SMBSE/bin -p
mv debianConfig/bin/aarch64/qj* ~/SMBSE/bin/;
rm debianConfig/ -r;
yes | apt install p7zip-full;
curl 'https://raw.githubusercontent.com/StringManolo/SMBSE/refs/heads/main/.bashrc' -o ~/.bashrc && source ~/.bashrc;

echo -e '\n\n\n\n\nInside vim enter ":PlugInstall" without quotes!\n';
echo 'Inside vim enter ":Codeium Auth" without quotes. Follow steps to sign-in and get your token.';
