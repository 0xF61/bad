FROM blackarchlinux/blackarch:latest
LABEL maintainer="0xF61"

COPY conf/pacman.conf /etc/pacman.conf
COPY conf/tools /tmp/tools

ADD conf/fish /root/.config/fish/
ADD conf/vim /root/.vim
COPY conf/tmux.conf /root/.tmux.conf


RUN pacman -Syu --noconfirm --overwrite \* `cat /tmp/tools` && \
		pacman -Scc --noconfirm && \
		chsh -s /bin/fish

WORKDIR /bad

ENTRYPOINT ["fish","--login"]
