FROM resin/beaglebone-node:0.10.38

#make a place for our code and install octalbonescript there.
RUN mkdir /usr/src/app
RUN cd /usr/src/app && npm install  octalbonescript_capemgr4_1

#enable the systemd init system.
ENV INITSYSTEM on

#copy all our source code into the container.
COPY . /usr/src/app

#run our start-container script when the container starts.
CMD ["bash","/usr/src/app/start-container.sh"]
