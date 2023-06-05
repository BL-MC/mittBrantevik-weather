FROM nodered/node-red:3.0.2-16
COPY flows.json         /data/flows.json
COPY flows_cred.json    /data/flows_cred.json
COPY settings.js        /data/settings.js
WORKDIR /usr/src/node-red
RUN npm install node-red-dashboard@3.4.0
ENV BOX=blinky-lite-box
ENV NODEREDLABEL=blinky-shelly-trays
ENV ADMINNAME=ADMIN
ENV NODEREDPORT=60429
ENV ENABLE_NODERED_EDITOR=0
