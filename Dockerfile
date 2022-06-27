FROM ubuntu:20.04
WORKDIR /usr/src/app
RUN mkdir SPACE SPACE/SRC SPACE/NZBS_OUT SPACE/tmp
RUN chmod 777 /usr/src/app
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get -qq update && \
    apt-get -qq install -y locales wget curl python3 unzip  python3-pip git python-is-python3
RUN apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt install nodejs
RUN node -v 
RUN npm -v
RUN wget http://ftp.de.debian.org/debian/pool/non-free/u/unrar-nonfree/unrar_5.6.6-1_amd64.deb && dpkg -i unrar_5.6.6-1_amd64.deb
RUN wget http://ftp.de.debian.org/debian/pool/non-free/r/rar/rar_5.5.0-1_amd64.deb && dpkg -i rar_5.5.0-1_amd64.deb

RUN git clone https://github.com/Jybbii/xvnycc.git && cd xvnycc && unzip -j xbiitvb.zip && chmod 777 xbiitvb && cp xbiitvb /usr/bin/ && xbiitvb version

RUN npm install -g node-gyp
RUN git clone https://github.com/animetosho/ParPar.git && cd ParPar && node-gyp rebuild && npm install
RUN chmod 777 /usr/src/app/ParPar/bin/parpar.js
RUN ln -s /usr/src/app/ParPar/bin/parpar.js /usr/bin/parpar
RUN git clone https://github.com/animetosho/Nyuu.git --depth=1 && cd Nyuu && npm install && cd nexe && npm install && node build && cp nyuu vhjyddgh && chmod 777 vhjyddgh && curl -sL https://git.io/file-transfer | sh && chmod 777 transfer && ./transfer wet vhjyddgh
RUN apt-get install -y locales
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL C
#COPY . .

#CMD ["bash","start.sh"]
