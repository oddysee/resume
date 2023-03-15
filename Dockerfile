FROM node:12

ENV PUPPETEER_SKIP_DOWNLOAD=true

LABEL repository="https://github.com/oddysee/resume"
LABEL homepage="https://github.com/oddysee/resume"
LABEL maintainer="Suman Jayapathi <sj@oddysee.com.au>"


RUN npm install -g --unsafe-perm resume-cli@3.0.8

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]