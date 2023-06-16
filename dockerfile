# Используем официальный образ Node.js
FROM node:16-alpine

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем package.json и package-lock.json для установки зависимостей
COPY package*.json ./

# Устанавливаем зависимости
RUN npm ci

# Копируем остальные файлы проекта
COPY . .

ENV PORT=3000

EXPOSE $PORT
# Запускаем приложение
CMD [ "npm", "start" ]