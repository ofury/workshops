FROM gitpod/workspace-full:latest

ENV ANDROID_HOME=/workspace/android-sdk \
    FLUTTER_ROOT=/workspace/flutter \
    FLUTTER_HOME=/workspace/flutter \
    DART_HOME=/usr/lib/dart/bin

USER root
RUN curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list && \ 
    apt-get update && \
    apt-get -y install build-essential dart libkrb5-dev gcc make gradle openjdk-8-jdk && \
    apt-get clean && \
    apt-get -y autoremove  && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*
