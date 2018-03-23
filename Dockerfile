FROM kuari/myflaskr
RUN export QT_QPA_PLATFORM=offscreen
RUN apt-get build-essential libgl1-mesa-dev qt5-default qttools5-dev-tools
