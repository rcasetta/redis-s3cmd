FROM redis:6.2.3
MAINTAINER Richard CASETTA <richard.casetta@gmail.com>

RUN apt-get update \
    && apt-get install -y \
      python \
      python-pip \
      cron \
    && rm -rf /var/lib/apt/lists/*

RUN pip install 's3cmd>=2.0.0'
RUN pip install rdbtools python-lzf
