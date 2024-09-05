FROM medusajs/medusa-base:latest

WORKDIR /app/medusa

COPY package.json .
COPY yarn.lock .

RUN yarn install

COPY . .

RUN yarn build

EXPOSE 9000

CMD ["medusa", "start"]
