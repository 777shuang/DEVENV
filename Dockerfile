FROM nimlang/nim
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt upgrade -y && \
    apt install software-properties-common mingw-w64 nano unzip wget && \
    echo >> /etc/apt/sources.list && \
    echo "deb [trusted=yes] https://max.kellermann.name/debian cegcc_buster-default main" >> /etc/apt/sources.list && \
    add-apt-repository ppa:tkchia/build-ia16 && \
    apt update && \
    apt upgrade -y && \
    apt install -y mingw-w64 gcc-arm-mingw32ce gcc-ia16-elf
CMD cd
