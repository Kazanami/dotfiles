# dotfiles

My Dotfiles

[![Test Run](https://github.com/Kazanami/dotfiles/actions/workflows/linux.yml/badge.svg)](https://github.com/Kazanami/dotfiles/actions/workflows/linux.yml)
![GitHub repo size](https://img.shields.io/github/repo-size/Kazanami/dotfiles?logo=github)

Test Env
```
$ dokcer build -f Dockerfile.TestEnv -t example/dotfiles_local:latest .
$ docker run -it --rm example/dotfiles_local:latest

$ bash bin/link.sh
```

Test Online Installer 
```
$ dokcer build -f Dockerfile.Online -t example/dotfiles_local:latest .
$ docker run -it --rm example/dotfiles_local:latest

$ bash ${HOME}/launch.sh
```