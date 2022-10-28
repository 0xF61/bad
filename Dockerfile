FROM blackarchlinux/blackarch:latest
LABEL maintainer="0xF61"

COPY conf/pacman.conf /etc/pacman.conf
COPY conf/tools /tmp/tools


RUN pacman -Syu --noconfirm --overwrite * `cat /tmp/tools` && \
		pacman -Scc --noconfirm && \
		vim -E +PlugInstall +qall && \
		chsh -s /bin/fish

ADD conf/fish /root/.config
ADD conf/vim /root/.vim
COPY conf/tmux.conf /root/.tmux.conf

WORKDIR /bad

ENTRYPOINT ["fish","--login"]
