FROM node:10-alpine

ENV PORT 3000
ENV NEXT_PUBLIC_STRAPI_API_URL http://strapi:1337

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package*.json /usr/src/app/
RUN npm install
COPY . /usr/src/app

EXPOSE 3000

RUN chmod +x /usr/src/app/commands.sh
CMD ["sh", "/usr/src/app/commands.sh"]
