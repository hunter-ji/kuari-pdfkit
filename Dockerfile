FROM python:latest
LABEL maintainer "Kuari <kuari@justmylife.cc>"
ENV QT_QPA_PLATFORM=offscreen
RUN pip install pdfkit \
    && apt-get update && apt-get install wkhtmltopdf -y \
    && mkdir /usr/lib/x86_64-linux-gnu/fonts \
    &&  apt-get install build-essential libgl1-mesa-dev qt5-default qttools5-dev-tools -y
ADD ./msyh.ttc /usr/lib/x86_64-linux-gnu/fonts/
