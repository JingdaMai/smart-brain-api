FROM node:8.11.1

WORKDIR /c/Users/maiji/Desktop/smart-brain-api

COPY ./ ./

RUN npm install

CMD ["/bin/bash"]