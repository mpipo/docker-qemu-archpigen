FROM mpipo/qemu
MAINTAINER mpipo

RUN pacman -S --noconfirm wget
RUN mkdir -p /qemu/workspace
ADD generate.sh /qemu/generate.sh
RUN chmod 755 /qemu/generate.sh

ENTRYPOINT ["/bin/bash", "-c", "/qemu/generate.sh"]