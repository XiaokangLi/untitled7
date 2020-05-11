FROM node:8.12.0-slim
WORKDIR /app
EXPOSE 3000 35722
COPY . /app
RUN yarn install
CMD ["yarn", "start", "--host", "0.0.0.0"]
