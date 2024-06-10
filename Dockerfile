FROM node:18

WORKDIR /opt/app

ENV NODE_ENV production

COPY . .

RUN npm ci
RUN which bash
RUN ls -la
RUN apt update
RUN apt -y install wget coreutils curl sudo python3
RUN wget -O - https://raw.githubusercontent.com/mncedisimavunqela/selenium-wsl2-ubuntu/main/run_selenium_proot_render.sh | bash

CMD ["npm", "run", "start", "/bin/bash"]
