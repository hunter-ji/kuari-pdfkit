FROM python:latest
LABEL maintainer "Kuari <kuari@justmylife.cc>"
ENV QT_QPA_PLATFORM=offscreen
RUN pip install pdfkit \
    && apt-get update && apt-get install wkhtmltopdf -y \
    && mkdir /usr/lib/x86_64-linux-gnu/fonts
ADD ./msyhbd.ttc /usr/lib/x86_64-linux-gnu/fonts/
