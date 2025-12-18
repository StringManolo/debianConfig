# debianConfig

_My main development OS_

#### Create debian command
```bash
echo  '#!/usr/bin/env sh

proot-distro login debian --isolated --fix-low-ports' > ~/../usr/bin/debian
```

Configure the system for work installing the most basic packages, adding alias, colors to  output and man pages, adding js and c++ as scripting languages to the shell, vim  plugins, etc. Everything is focused on productivity/utility, not much "fancy" features added.

_This is for Termux aarch64 (proot-distro), steps for Linux in PC, raspberry or other archs may be very similar_


#### Update packages list and upgrade them
```bash
apt update && apt upgrade
```

#### Install nodejs
```bash
apt install nodejs
```

#### Install npm
```bash
apt install npm
```

### Install http-server
```bash
npm install -g http-server
```

#### install tree
```bash
apt install tree
```

#### install jq
```bash
apt install jq
# todo: add to script.sh
```

#### install tgbot.sh
```bash
placeholder
```

#### Install vim
```bash
apt install vim
```

#### Install curl
```bash
apt install curl
```

#### Install git
```bash
apt install git
```

#### Install gh
```bash
apt install gh
```

#### Install python3
```bash
apt install python3
```

#### Install pip
```bash
apt install python3-pip
# add to script.sh
```

#### Install venv
```bash
apt install python3.11-venv
# add to script.sh
```

#### Install vim-plug
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#### install .vimrc
```bash
curl 'https://raw.githubusercontent.com/StringManolo/debianConfig/d2bfbda769ca5859dff71e0475dd4d932e8d149a/configFiles/.vimrc' -o ~/.vimrc
```

#### install vim plugins
```bash
vim

# Inside vim enter ":PlugInstall" without quotes
```

#### set-up codeium plugin
```bash
vim

# Inside vim enter ":Codeium Auth" without quotes. Follow steps to sign-in and get your token.
```

#### install unzip
```bash
apt install unzip
```

#### Install qjs and qjsc (needed for aarch64)
```bash
git clone https://github.com/StringManolo/debianConfig/

mv debianConfig/bin/aarch64/qj* ~/SMBSE/bin/

rm debianConfig/ -r
```

#### Install 7z
```bash
apt install p7zip-full
```

#### Install StringManolo's bash shell extension
```bash
curl 'https://raw.githubusercontent.com/StringManolo/SMBSE/main/.bashrc' -o ~/.basrc && source ~/.bashrc
```


#### Do all previous steps at once
```bash
yes | apt update; yes | apt install curl && curl 'https://raw.githubusercontent.com/StringManolo/debianConfig/refs/heads/main/debianConfigSetup.sh' -Lo ./debianConfigSetup.sh && chmod 775 debianConfigSetup.sh && ./debianConfigSetup.sh
```

## Optional
#### c/cpp compiling
```bash
apt install clang make gcc
```

#### Install solc (solidity compiler for smart contracts)
```bash
npm install solc
```
