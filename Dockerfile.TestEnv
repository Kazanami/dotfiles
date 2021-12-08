FROM ubuntu:latest
WORKDIR /root/dotfiles
COPY bash/ /root/dotfiles/bash/
#COPY zsh/ /root/dotfiles/zsh/ 
COPY lib/ /root/dotfiles/lib/ 
COPY bin/ /root/dotfiles/bin/ 
COPY list/ /root/dotfiles/list/
COPY nvim/ /root/dotfiles/nvim/
RUN mv /root/.bashrc /root/dotfiles/bash/bashrc && \
    mv /root/.profile /root/dotfiles/bash/profile
    