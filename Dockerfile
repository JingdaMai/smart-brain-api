FROM node:10

ADD ./package.json /tmp/

RUN cd /tmp/ && npm install

ADD ./ /code/

RUN cp -r /tmp/node_modules/ /code/

WORKDIR /code

CMD ["/bin/bash"]