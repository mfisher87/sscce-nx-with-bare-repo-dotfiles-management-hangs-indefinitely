FROM node:20

RUN apt update
RUN apt install -y git

WORKDIR /home/someuser

# This line reproduces the issue!
# This is a common pattern for managing dotfiles with git.
RUN echo "*" > .gitignore

WORKDIR /home/someuser/someproject
COPY package.json .
COPY nx.json .

RUN npm install --verbose

# Also reproduces with yarn:
# COPY .yarnrc.yml .
# RUN yarn set version stable
# RUN yarn install
