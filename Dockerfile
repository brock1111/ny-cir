FROM greyltc/archlinux-aur:yay
WORKDIR /usr/src/app
RUN mkdir SPACE SPACE/SRC SPACE/NZBS_OUT SPACE/tmp
RUN chmod 777 /usr/src/app
ENV TZ=Asia/Kolkata
RUN pacman -Syyu
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN aur-install python-pip nyuu-bin
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL C
#COPY . .

#CMD ["bash","start.sh"]
