# Natron Renderer Docker

Simple docker image to render Natron projects.

## Build

```
docker build -t rodrigobrito/natron .
```

## Download

```
docker pull rodrigobrito/natron
```

## Example of usage

Render GIF frin test file into `/render` directory:

```
docker run -ti -v `pwd`:/render -w /render rodrigobrito/natron NatronRenderer -w Write1 /render/render.gif test.ntp
```

Result:

<img width="256px" src="render.gif" />

<hr />

MIT License - Copyright (c) 2019 Rodrigo Brito