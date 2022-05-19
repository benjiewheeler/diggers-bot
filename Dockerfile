FROM alpine:latest

RUN apk add --no-cache nodejs yarn
RUN yarn global add pnpm

WORKDIR /app

COPY package.json pnpm-lock.yaml /app/

RUN pnpm i

COPY . /app/

CMD [ "/bin/sh", "-c", "node . 2>&1" ]
