FROM mcr.microsoft.com/playwright:focal

# Install Python3 and set it as the default python & pip
RUN set -eux; \
    apt-get update && apt-get install -y python3 python3-pip python3-venv; \
    rm -rf /var/lib/apt/lists/*; \
    update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1; \
    update-alternatives --install /usr/bin/python python /usr/bin/python3 1;

#USER pwuser
ARG UID=1000
ARG GID=1000
USER root
RUN set -eux; \
    usermod -u $UID pwuser;\
    groupmod -g $GID pwuser;\
    usermod -g $GID pwuser;
RUN apt-get update && apt-get install -y sudo

USER pwuser


ENV PIP_INDEX_URL=https://artifactory.mia.ulti.io/artifactory/api/pypi/pypi/simple
ENV PATH=/home/pwuser/.local/bin:$PATH DEBUG=pw:api

COPY requirements.txt /home/pwuser/
