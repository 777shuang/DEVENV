FROM nimlang/nim
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt upgrade -y && \
    apt install -y software-properties-common mingw-w64 nano unzip wget && \
    echo "deb [trusted=yes] https://max.kellermann.name/debian cegcc_buster-default main" > /etc/apt/sources.list.d/cegcc.list && \
    add-apt-repository ppa:tkchia/build-ia16 && \
    apt update && \
    apt upgrade -y && \
    apt install -y gcc-arm-mingw32ce gcc-ia16-elf
CMD cd
