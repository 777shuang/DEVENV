FROM nimlang/nim
RUN apt update && \
    apt upgrade -y && \
    echo >> /etc/apt/sources.list && \
    echo "deb [trusted=yes] https://max.kellermann.name/debian cegcc_buster-default main" >> /etc/apt/sources.list && \
    apt update && \
    apt install -y mingw-w64 gcc-arm-mingw32ce unzip nano curl && \
    nimble install -y apt_brain
CMD export PATH="~/.nimble/bin:$PATH"
