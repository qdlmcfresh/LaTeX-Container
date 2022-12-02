FROM ubuntu:latest
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    pandoc texlive-latex-recommended texlive-latex-extra \
    texlive-science texlive-bibtex-extra \
    texlive-extra-utils \
    texlive-fonts-extra texlive-lang-german \
    texlive-lang-english biber latexmk make \
    git procps locales curl ripgrep

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8 LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
