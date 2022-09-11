FROM blackarchlinux/blackarch:latest
LABEL maintainer="0xF61"

COPY conf/pacman.conf /etc/pacman.conf
COPY conf/tools /tmp/tools
COPY conf/fish/config.fish /root/.config/fish/config.fish
COPY conf/tmux.conf /root/.tmux.conf

WORKDIR /root

RUN pacman -Syu --noconfirm --overwrite * `cat /tmp/tools` && \
		pacman -Scc --noconfirm && \
		chsh -s /bin/fish

ENTRYPOINT ["fish"]
