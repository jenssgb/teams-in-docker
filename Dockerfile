FROM ubuntu:20.04
RUN apt-get update && \
apt-get install -y curl apt-utils \
libasound2 libatk-bridge2.0-0 libcairo2 libcups2 libgdk-pixbuf2.0-0 \
libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 \
libsecret-1-0 libx11-xcb1 libxcomposite1 libxcomposite1 \
libxss1 apt-transport-https libxkbfile1
RUN apt install software-properties-common -y

#Install Microsoft Teams from Microsoft Repository
RUN curl -sSL https://packages.microsoft.com/keys/microsoft.asc | tee /etc/apt/trusted.gpg.d/microsoft.asc
RUN apt-add-repository https://packages.microsoft.com/ubuntu/20.04/prod
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list

#Update & Upgrade
RUN apt-get update
RUN apt-get upgrade -y

#Install Teams
RUN apt install teams -y