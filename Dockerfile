#FROM node:17
FROM node:lts
# Задаём текущую рабочую директорию
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
# Копируем код из локального контекста в рабочую директорию образа
COPY . .
EXPOSE 3000
CMD ["npm","start"]