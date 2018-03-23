FROM kuari/myflaskr
ENV QT_QPA_PLATFORM=offscreen
RUN apt-get install build-essential libgl1-mesa-dev qt5-default qttools5-dev-tools -y
