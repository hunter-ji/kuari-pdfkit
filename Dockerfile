FROM kuari/myflaskr
ENV QT_QPA_PLATFORM=offscreen
RUN mkdir /usr/lib/x86_64-linux-gnu/fonts \
       &&  apt-get install build-essential libgl1-mesa-dev qt5-default qttools5-dev-tools -y
