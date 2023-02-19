FROM blackarchlinux/blackarch:latest

LABEL maintainer="0xF61"

COPY conf/pacman.conf /etc/pacman.conf
COPY conf/tools /tmp/tools

RUN pacman -Syyu --noconfirm --overwrite \* `cat /tmp/tools` && \
		pacman -Scc --noconfirm && \
		git clone https://github.com/0xF61/dotfiles.git && \
		rm -rf ~/.config/ && mv dotfiles/.config/ ~/ && \
		rm -rf ~/.vim/ && mv dotfiles/.vim ~ && \
		rm -rf dotfiles && \
		vim +PlugInstall +qall >/dev/null && \
		chsh -s /bin/fish

WORKDIR /bad

ENTRYPOINT ["fish","--login"]
