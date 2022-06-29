FROM greyltc/archlinux-aur
WORKDIR /usr/src/app
RUN mkdir SPACE SPACE/SRC SPACE/NZBS_OUT SPACE/tmp
RUN chmod 777 /usr/src/app
ENV TZ=Asia/Kolkata
RUN pacman -Syyu --noconfirm
RUN pacman-db-upgrade
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN aur-install python-pip python3 wget git gcc curl nyuu-bin nodejs npm rar unzip
RUN npm install -g yarn
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL C
