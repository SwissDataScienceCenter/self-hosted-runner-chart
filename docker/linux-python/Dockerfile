FROM github/k8s-actions-runner:latest

RUN apt-get update --fix-missing

# Set the locale
RUN apt-get install -y locales
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# install python and git
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:deadsnakes/ppa
RUN add-apt-repository -y ppa:git-core/ppa
RUN apt-get update
RUN apt-get install -y sudo python3 python3-dev python3.7 python3.7-dev python3.8 python3.8-dev git git-lfs gcc
