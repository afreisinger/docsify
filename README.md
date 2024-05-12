# 🖌 Docsify


> Simple [Docsify](https://github.com/docsifyjs/docsify) with [Mermaid](https://mermaid.js.org/) plug-in and example.


[![Build and publish container](https://github.com/afreisinger/docsify/actions/workflows/auto-build-container.yml/badge.svg)](https://github.com/afreisinger/docsify/actions/workflows/auto-build-container.yml)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/afreisinger/docsify/latest)](https://hub.docker.com/r/afreisinger/docsify)
[![Docker Pulls](https://img.shields.io/docker/pulls/afreisinger/docsify)](https://hub.docker.com/r/afreisinger/docsify)
[![GitHub Release](https://img.shields.io/github/v/release/afreisinger/docsify)](https://github.com/afreisinger/docsify/releases)


## Updates

This image is regularly update with the latest release from the official docsify-cli image.

Whenever there is an update for the [original docsify-cli npm](https://cli.docsifyjs.org/#/) an automatic pull request is opened to implement the update and I do my best to merge the updates quickly.

The workflow file for this can be found in `.github/workflows/auto-build-container.yml`


## 📥 Download

**Docker Image**

[DockerHub](https://hub.docker.com/r/afreisinger/docsify)

```bash
docker pull afreisinger/docsify:latest
```

[GitHub Registry](https://github.com/users/afreisinger/packages/container/package/docsify)

```bash
docker pull ghcr.io/afreisinger/docsify:latest
```

### Using Docker Image

### Setup

```bash
# initilize docs folder using docsify
docker run --rm -v docs:/docs afreisinger/docsify init
```

### Run

``` bash
# using docker container
docker run --rm -v docs:/docs afreisinger/docsify serve
```

### Optional Params

Optional parameters to pass to docsify

```bash
--livereload-port=PORT_HERE     livereload on PORT_HERE
```


### Example

```bash
git clone https://github.com/afreisinger/docsify.git
cd docsify/
mv docs.sample docs
docker-compose up -d  #modify docker-compose if necessary
```


## 📖 Resources

For more info on docsify

- Read docsify [documentation](https://docsify.js.org/#/?id=docsify)
- Find docsify source on [github](https://github.com/docsifyjs/docsify)


## 📄 License

[Apache License, Version 2.0](https://github.com/afreisinger/docsify/blob/main/LICENSE) © 2024 [afreisinger](https://github.com/afreisinger)
