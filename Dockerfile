# n8n Telegram Bot для сравнения Excel файлов
FROM docker.n8n.io/n8nio/n8n:latest

# Устанавливаем права root для установки пакетов
USER root

# Устанавливаем необходимые npm пакеты глобально
RUN npm install -g exceljs

# Возвращаем обычного пользователя
USER node

# Открываем порт для n8n
EXPOSE 5678

# Стартовая команда остается дефолтной
CMD ["n8n"]