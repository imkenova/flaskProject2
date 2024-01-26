# Используем образ Python
FROM python:3.9-slim

# Создаем каталог приложения и переходи туда
WORKDIR /app

# Копируем файлы приложения в контейнер
COPY . /app

# Установка зависимостей из requirements.txt
RUN pip install -r requirements.txt

# Установливаем  переменную окружения для Flask
ENV FLASK_APP=app.py

# Запуск нашего приложения Flask
CMD ["flask", "run", "--host=0.0.0.0"]
