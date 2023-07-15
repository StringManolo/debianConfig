# debianConfig


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

### Install StringManolo's bash shell extension
```bash
curl 'https://raw.githubusercontent.com/StringManolo/SMBSE/main/.bashrc' -o ~/.basrc && source ~/.bashrc
```


### Do all previous steps at once
```bash
curl script.sh
```
