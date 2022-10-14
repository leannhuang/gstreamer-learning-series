# 1. Create a Docker container 
This container runs a Ubuntu 20.04.2 LTS (Focal Fosse) version OS , python 3.9.6  and OpenCV 4.5.3 version inside it.

While installing this Docker container if you happen to see any issues like "he public key is not available: NO_PUBKEY 87192*****"; this is basically apt telling us that the following keys are missing from the apt key manager. We need to add these keys by running the following commands. 
"sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C"


