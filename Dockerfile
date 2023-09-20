FROM blackarchlinux/blackarch:latest

LABEL maintainer="0xF61"

COPY conf/pacman.conf /etc/pacman.conf
COPY conf/tools /tmp/tools
COPY conf/config.lua /tmp/config.lua

ENV TERM "xterm-256color"

RUN pacman -Syyu --noconfirm --overwrite \* `cat /tmp/tools` && \
		git clone --depth=1 https://github.com/0xF61/dotfiles.git && \
		rm -rf ~/.config && mv dotfiles/.config/ ~/ && \
		rm -rf dotfiles ~/.config/nvim && \
		git clone --depth=1 https://github.com/LunarVim/LunarVim ~/.config/nvim && \
		mv /tmp/config.lua ~/.config/nvim/config.lua && \
		curl -s https://raw.githubusercontent.com/six2dez/OneListForAll/main/onelistforallmicro.txt -Lo /opt/onelistforallmicro.txt && \
		yes | pacman -Scc && \
		chsh -s /bin/fish

RUN nvim --headless "+Lazy! sync" +qa


WORKDIR /bad
SHELL ["/usr/sbin/fish", "-c"]
ENTRYPOINT ["fish","--login"]
