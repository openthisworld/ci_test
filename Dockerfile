# Використовуємо легкий базовий образ Alpine Linux
FROM alpine:3.18

# Аргумент для передачі дати побудови (BUILD_DATE)
ARG BUILD_DATE

# Створюємо файл, де записуємо інформацію про дату білду
RUN echo "Імедж побудовано: ${BUILD_DATE}" > /build-info.txt

# При запуску контейнера виводимо зміст файлу build-info.txt!
CMD ["cat", "/build-info.txt"]
