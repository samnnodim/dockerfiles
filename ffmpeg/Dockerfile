FROM busybox

ENV VERSION 20150609

RUN wget http://johnvansickle.com/ffmpeg/builds/ffmpeg-git-64bit-static.tar.xz \
    && xz -d ffmpeg-git-64bit-static.tar.xz \
    && tar xvf ffmpeg-git-64bit-static.tar

WORKDIR ffmpeg-git-${VERSION}-64bit-static
