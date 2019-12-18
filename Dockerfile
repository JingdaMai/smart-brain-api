FROM node:8.11.1

WORKDIR /home/mai/Desktop/smart-brain-api

COPY ./ ./

RUN npm install

CMD ["/bin/bash"]