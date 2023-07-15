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
curl 'https://github.com/StringManolo/debianConfig/raw/main/bin/aarch64/qjs' -o ~/SMBSE/bin/qjs

curl 'https://github.com/StringManolo/debianConfig/raw/main/bin/aarch64/qjsc' -o ~/SMBSE/bin/qjsc

```

### Install StringManolo's bash shell extension
```bash
curl 'https://raw.githubusercontent.com/StringManolo/SMBSE/main/.bashrc' -o ~/.basrc && source ~/.bashrc
```


### Do all previous steps at once
```bash
curl script.sh
```
