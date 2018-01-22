FROM ubuntu:latest

LABEL author="seo.cahill@parashift.io"

ENV LANG C.UTF-8  
ENV LC_ALL C.UTF-8 
ENV PYTHONIOENCODING utf-8   

RUN \
    apt-get update -y \
    && apt-get install -y \
    build-essential \
    ghostscript \
    imagemagick \
    libfile-mimeinfo-perl \
    libglib2.0.0 \
    mime-support \
    poppler-utils \
    python3 \
    python3-dev \
    python3-pip 

RUN \
  apt-get install -y software-properties-common \
  && add-apt-repository -y ppa:alex-p/tesseract-ocr \
  && apt-get update \
  && apt-get install -y \
  tesseract-ocr \
  tesseract-ocr-deu \
  tesseract-ocr-eng 

CMD ["python3"]

