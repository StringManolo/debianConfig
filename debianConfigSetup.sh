#!/usr/bin/env bash

yes | apt update && yes | apt upgrade;
yes | apt install curl;
yes | apt install nodejs;
# Maybe node already has npm #
npm --version || yes | apt install --no-install-recommends npm;
npm install -g http-server;
yes | apt install tree;
yes | apt install vim;
yes | apt install git;
yes | apt install gh;
yes | apt install python3;
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim;
curl 'https://raw.githubusercontent.com/StringManolo/debianConfig/refs/heads/main/configFiles/.vimrc' -o ~/.vimrc;
yes | apt install unzip;
# APT HAS NOW QUICKJS BINS
#git clone https://github.com/StringManolo/debianConfig/;
#mkdir ~/SMBSE/bin -p
#mv debianConfig/bin/aarch64/android/qj* ~/SMBSE/bin/;
yes | apt install quickjs;
rm debianConfig/ -r;
yes | apt install p7zip-full;

curl 'https://raw.githubusercontent.com/StringManolo/SMBSE/refs/heads/main/.bashrc' -o ~/.bashrc 

vim -es -u ~/.vimrc -i NONE -c "PlugInstall" -c "qa"

# echo -e '\n\n\n\n\nInside vim enter ":PlugInstall" without quotes!\n';
exec bash
