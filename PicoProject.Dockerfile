FROM picodev:latest

COPY /app /root/pico/app

RUN cd app \
 && mkdir build \
 && cd build \
 && cmake -DCMAKE_BUILD_TYPE=Debug .. \
 && make

RUN mkdir artifacts && find ./app/build -name \*.uf2 -exec cp {} ./artifacts/ \; \
 && find ./app/build -name \*.elf -not -path "./app/build/pico-sdk/*" -exec cp {} ./artifacts/ \;