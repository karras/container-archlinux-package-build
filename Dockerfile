FROM archlinux/archlinux:base-devel

LABEL org.opencontainers.image.authors="Michael Hofer <karras@0x539.ch>"
LABEL org.opencontainers.image.source="https://github.com/karras/container-archlinux-package-build"
LABEL org.opencontainers.image.title="Arch Linux Package Build"
LABEL org.opencontainers.image.description="Arch Linux container image for building Arch Linux, especially AUR, packages."
LABEL org.opencontainers.image.base.name="docker.io/archlinux/archlinux:base-devel"

# Update all packages
RUN pacman -Syu --noconfirm \
    && yes|pacman -Scc

# Install build tools
RUN pacman -S --noconfirm git gnupg sudo \
    && yes|pacman -Scc

# Create build user with sudo privileges
RUN useradd -m -s /bin/bash builder \
    && passwd -d builder \
    && echo 'builder ALL=(ALL) ALL' >> /etc/sudoers.d/builder

# Dummy command
CMD ["/bin/bash"]
