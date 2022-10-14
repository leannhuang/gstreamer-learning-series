# Ubuntu 20.04.2 LTS (Focal Fossa) 
# python 3.9.6 
# OpenCV 4.5.3

FROM borda/docker_python-opencv-ffmpeg

# Gstreamer Installation
# Description (9):
#   Install minimal/base gstream packages version 1.14.5-0 (specified version in DeepStream6 doc).
#   AVA team requires only GOOD plugin and so other plugins are commented out to not to be install because of strict license terms
#   Packages to be installed: libgstreamer1.0-0, gstreamer1.0-tools, gstreamer1.0-plugins-good

RUN apt-get update \
    \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        libgstreamer1.0-0 \
        gstreamer1.0-tools \
        gstreamer1.0-plugins-good \
        # gstreamer1.0-plugins-bad \
        # gstreamer1.0-plugins-ugly \
        # gstreamer1.0-libav \
        # libgstrtspserver-1.0-0 \
    \
    &&  rm -rf /var/lib/apt/lists/* \
    &&  apt autoremove

RUN apt-get update \
&& apt-get install -y --no-install-recommends \
&& apt install vim 

WORKDIR /app
COPY ./app .
 
ENTRYPOINT ["/bin/bash"]