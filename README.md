# Usage

Run before `xhost +local:docker` is required to see GUI on the host system.

Mount the current directory on the host into the container's /bad folder.

```
docker run --name bad --rm -v="$PWD:/bad/" -e=DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro -ti ghcr.io/0xf61/bad:main
```

Made with <3 & Github Actions
