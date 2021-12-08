# dotfiles

My Dotfiles

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