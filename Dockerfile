FROM nimlang/nim
ENV DEBIAN_FRONTEND=noninteractive
RUN echo >> /etc/apt/sources.list && \
    echo "deb [trusted=yes] https://max.kellermann.name/debian cegcc_buster-default main" >> /etc/apt/sources.list && \
    apt update && \
    apt upgrade -y && \
    apt install -y mingw-w64 gcc-arm-mingw32ce unzip nano wget
CMD cd
