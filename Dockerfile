FROM blackarchlinux/blackarch:latest

LABEL maintainer="0xF61"

COPY conf/pacman.conf /etc/pacman.conf
COPY conf/tools /tmp/tools

ENV TERM "xterm-256color"

RUN pacman -Syyu --noconfirm --overwrite \* `cat /tmp/tools` && \
		yes | pacman -Scc && \
		git clone https://github.com/0xF61/dotfiles.git && \
		rm -rf ~/.config/ && mv dotfiles/.config/ ~/ && \
		rm -rf ~/.vim/ && mv dotfiles/.vim ~/ && \
		rm -rf dotfiles && \
		curl -s https://raw.githubusercontent.com/six2dez/OneListForAll/main/onelistforallmicro.txt -Lo /opt/onelistforallmicro.txt && \
		chsh -s /bin/fish && \
		nvim +PlugInstall +qall 2>/dev/null && \
		nvim -c 'CocInstall -sync coc-go coc-highlight coc-json coc-marketplace coc-pairs coc-prettier coc-pyright coc-snippets |q'

WORKDIR /bad

ENTRYPOINT ["fish","--login"]
