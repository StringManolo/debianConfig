# debianConfig

Configure the system for work installing the most basic packages, adding alias, colors to  output and man pages, adding js and c++ as scripting languages to the shell, vim  plugins, etc. Everything is focused on productivity/utility, not much "fancy" features added.

_This is for Termux aarch64 (proot-distro), steps for Linux in PC, raspberry or other archs may be very similar_

### Create debian command
```bash
echo  '#!/usr/bin/env sh

proot-distro login debian --isolated --fix-low-ports' > ~/../usr/bin/debian
```

### Update packages list and upgrade them
```bash
apt update && apt upgrade
```

### Install nodejs
```bash
apt install nodejs
```

### Install vim
```bash
apt install vim
```

### Install curl
```bash
apt install curl
```

### Install vim-plug
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### install .vimrc
```bash
curl 'https://github.com/StringManolo/debianConfig/blob/b2ea63bc39f408f87c7e9a613e04e0a640b4f6eb/configFiles/.vimrc' -o ~/.vimrc
```

### install vim plugins
```bash
vim

# Inside vim enter ":PlugInstall" without quotes
```

### install unzip
```bash
apt install unzip
```

### Install qjs and qjsc (needed for aarch64)
```bash
git clone https://github.com/StringManolo/debianConfig/

mv debianConfig/bin/aarch64/qj* ~/SMBSE/bin/

rm debianConfig/ -r
```

### Install 7z
```bash
apt install p7zip-full
```

### Install StringManolo's bash shell extension
```bash
curl 'https://raw.githubusercontent.com/StringManolo/SMBSE/main/.bashrc' -o ~/.basrc && source ~/.bashrc
```


### Do all previous steps at once
```bash
curl script.sh
```
