FROM blackarchlinux/blackarch:latest

LABEL maintainer="0xF61"

COPY conf/pacman.conf /etc/pacman.conf
COPY conf/tools /tmp/tools

ENV TERM "xterm-256color"

ENV GOPATH "/root/.local/share/go/"

RUN pacman-key --init && pacman-key  --populate archlinux && \
  echo F9A6E68A711354D84A9B91637533BAFE69A25079:4: >> /usr/share/pacman/keyring/blackarch-trusted && \
  pacman -Syyu --noconfirm --overwrite \* archlinux-keyring `cat /tmp/tools` && \
  git clone --depth=1 https://github.com/0xF61/dotfiles.git && \
  rm -rf ~/.config && mv dotfiles/.config/ ~/ && \
  yes | pacman -Scc && \
  chsh -s /bin/fish

RUN nvim --headless "+Lazy! sync" +qa

WORKDIR /bad
SHELL ["/usr/sbin/fish", "-c"]
ENTRYPOINT ["fish","--login"]
