# Debian 12 aka Bookworm
FROM ubuntu:22.04

ARG TESSERACT_VERSION="main"
ARG TESSERACT_URL="https://api.github.com/repos/tesseract-ocr/tesseract/tarball/$TESSERACT_VERSION"

# install basic tools
RUN apt-get update && apt-get install --no-install-recommends --yes \
    apt-transport-https \
    bash \
    ca-certificates \
    curl \
    poppler-utils \
    tesseract-ocr  \
    tesseract-ocr-spa \
    imagemagick \
    && rm -rf /var/lib/apt/lists/*

ENV LANG C.UTF-8
COPY own.traineddata /usr/share/tesseract-ocr/4.00/tessdata/ 
RUN mkdir -p /ocr
COPY pdftocsv_estados.sh /ocr
COPY user_words.txt /ocr
COPY user_patterns.txt /ocr
CMD ["tesseract", "--list-langs"]
