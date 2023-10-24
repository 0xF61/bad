FROM blackarchlinux/blackarch:latest

LABEL maintainer="0xF61"

COPY conf/pacman.conf /etc/pacman.conf
COPY conf/tools /tmp/tools

ENV TERM "xterm-256color"
ENV GOPATH "/root/.local/share/go/"

RUN pacman -Syyu --noconfirm --overwrite \* `cat /tmp/tools` && \
  git clone --depth=1 https://github.com/0xF61/dotfiles.git && \
  rm -rf ~/.config && mv dotfiles/.config/ ~/ && \
  rm -rf dotfiles ~/.config/nvim && \
  git clone --depth=1 https://github.com/LunarVim/LunarVim ~/.config/nvim && \
  cp ~/.config/lvim/config.lua ~/.config/nvim/config.lua && \
  ln -s /usr/sbin/nvim /usr/local/bin/lvim && \
  yes | pacman -Scc && \
  chsh -s /bin/fish

RUN nvim --headless "+Lazy! sync" +qa

WORKDIR /bad
SHELL ["/usr/sbin/fish", "-c"]
ENTRYPOINT ["fish","--login"]
