# Sorry to say that blackarch is not supporting his docker images anymore
# FROM blackarchlinux/blackarch:latest
FROM kalilinux/kali-bleeding-edge

LABEL maintainer="0xF61"

#COPY conf/pacman.conf /etc/pacman.conf
COPY conf/tools /tmp/tools

ENV TERM "xterm-256color"
ENV GOPATH "/root/.local/share/go/"

RUN apt -y update && apt -y upgrade && \
  DEBIAN_FRONTEND=noninteractive apt -yq install kali-linux-headless fish neovim < /tmp/tools && \
  git clone --depth=1 https://github.com/0xF61/dotfiles.git && \
  rm -rf ~/.config && mv dotfiles/.config/ ~/ && \
  chsh -s /bin/fish

RUN nvim --headless "+Lazy! sync" +qa

WORKDIR /bad
SHELL ["/usr/sbin/fish", "-c"]
ENTRYPOINT ["fish","--login"]
