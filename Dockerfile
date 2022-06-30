FROM greyltc/archlinux-aur
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
ENV TZ=Asia/Kolkata
RUN pacman -Syyu --noconfirm
RUN pacman-db-upgrade
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN aur-install nodejs node-gyp npm python-pip python3 parpar-bin wget git gcc curl nyuu-bin rar mediainfo cksfv cfv unzip
RUN npm install -g yarn
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL C
