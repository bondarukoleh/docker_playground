FROM node:10.16-alpine

EXPOSE 3000

RUN apk update && apk add bash
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json package.json

RUN npm i

# means copy everything from my current directory where Dockerfile is - to the
# directory where we are building our image
COPY . .

CMD ["npm", "t"]
