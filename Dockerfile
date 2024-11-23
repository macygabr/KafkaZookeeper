# Используем официальный образ Confluent Kafka
FROM confluentinc/cp-kafka:latest

# Устанавливаем необходимые переменные окружения
ENV KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://localhost:9092
ENV KAFKA_LISTENER_SECURITY_PROTOCOL=PLAINTEXT
ENV KAFKA_LISTENER_NAME=PLAINTEXT
ENV KAFKA_LISTENER_PORT=9093
ENV KAFKA_LISTENER_INTERNAL_PORT=9092
ENV KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181
ENV KAFKA_LISTENER_INTERPROCESS_SECURITY_PROTOCOL=PLAINTEXT
ENV KAFKA_LISTENER_LISTENER_SECURITY_PROTOCOL=PLAINTEXT
ENV KAFKA_LISTENER_LISTENER=PLAINTEXT://localhost:9092
ENV KAFKA_PORT=9092
ENV KAFKA_LISTENER_SOCKET_TIMEOUT_MS=60000
ENV KAFKA_LISTENER_SECURITY_PROTOCOL=PLAINTEXT

# Открываем порты для Kafka
EXPOSE 9092

# Команда для запуска Kafka
CMD ["bash", "-c", "/etc/confluent/docker/run"]
