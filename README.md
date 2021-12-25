# Container Image - Arch Linux Package Build

Arch Linux container image for building Arch Linux, especially AUR, packages.

![GitHub](https://github.com/karras/container-archlinux-package-build/workflows/Publish/badge.svg?branch=main)

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

## License

See [LICENSE](./LICENSE)
