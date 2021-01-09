FROM alpine

RUN apk add --no-cache git make cmake g++ boost-dev sqlite-dev jsoncpp-dev openssl-dev && \
        cd / && git clone https://github.com/gabime/spdlog && cd spdlog && cmake . && make install && \
        cd / && git clone https://github.com/davisking/dlib.git && cd dlib && mkdir build && \
        cd build && cmake .. && make install
