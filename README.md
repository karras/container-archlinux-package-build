# Container Image - Arch Linux Package Build

Arch Linux container image for building Arch Linux, especially AUR, packages.

[![Build & Publish](https://github.com/karras/container-archlinux-package-build/actions/workflows/build-publish.yml/badge.svg)](https://github.com/karras/container-archlinux-package-build/actions/workflows/build-publish.yml)

## Why

Buliding Arch packages within a container, especially a pipeline, can help
avoiding unnecessary local dependencies and provide up to date package more
easily.

## Customizations

The following customizations are added on top of the Arch Linux base-devel
image:

* Setup build tools such as git
* Create `builder` user with sudo privileges to run `makepkg`

## Usage

Run the container as follows:

```sh
podman run \
  --tty \
  ghcr.io/karras/archlinux-package-build
```

All available tags can be found in the
[registry](https://github.com/karras/container-archlinux-package-build/pkgs/container/archlinux-package-build).
The `latest` tag is updated on a weekly basis each Friday.

## License

See [LICENSE](./LICENSE)
