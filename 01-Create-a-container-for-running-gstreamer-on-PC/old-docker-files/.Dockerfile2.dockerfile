FROM ubuntu-20.04 as amd64-ubuntu

# Install python 
RUN apt-get update && apt-get install -y \
    software-properties-common
RUN apt-get update && apt-get install -y \
    python3.7 \
    python3-pip
RUN python3.7 -m pip install pip
RUN apt-get update && apt-get install -y \
    python3-distutils \
    python3-setuptools
RUN python3.7 -m pip install pip --upgrade pip


    # # Install python 3.8
# # Install needed libraries
# RUN apt-get update -y && apt-get install --no-install-recommends -y \
#     ##################
#     # Apt-get installs
#     ##################
#     # CMake for building lots of stuff
#     cmake \
#     # Build-essential for also lots of stuff
#     build-essential \
#     # Pip to install libraries
#     python3-pip \
#     # Python GStreamer bindings
#     python3-gst-1.0 \
#     # Need python development objects and headers for pyds
#     libpython3.6-dev \
#     # Wget so we can grab the AI model
#     wget 
