# Используем образ Kafka с Zookeeper
FROM wurstmeister/kafka:latest

# Устанавливаем переменные окружения
ENV KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://localhost:9092
ENV KAFKA_LISTENER_SECURITY_PROTOCOL=PLAINTEXT
ENV KAFKA_LISTENER_PORT=9093
ENV KAFKA_LISTENER_LISTENER=PLAINTEXT://localhost:9092
ENV KAFKA_ZOOKEEPER_CONNECT=localhost:2181

# Запускаем Kafka
CMD ["bash", "-c", "/etc/confluent/docker/run"]
