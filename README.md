# Usage

```
docker run --name bad --rm -v="$PWD:/bad/" -e=DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro --workdir /root -ti ghcr.io/0xf61/bad:main
```

Made with <3 & Github Actions
