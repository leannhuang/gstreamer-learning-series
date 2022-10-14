FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y gnupg2\
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C \
    && apt-get install -y python3-pip python3-dev \
    && cd /usr/local/bin \
    && ln -s /usr/bin/python3 python \
    && pip3 install --upgrade pip 

WORKDIR /app 
COPY requirements.txt .

RUN pip3 install -r requirements.txt 

COPY ./main.py ./

ENTRYPOINT ["/bin/bash"]
# ENTRYPOINT ["python3"]
#CMD [ "python3", "-u", "./main.py"]

