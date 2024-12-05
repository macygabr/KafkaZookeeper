# Используем базовый образ с Kafka и Zookeeper
FROM confluentinc/cp-kafka:latest

# Устанавливаем переменные окружения для Kafka
ENV KAFKA_ADVERTISED_LISTENERS=INSIDE://kafka:9093
ENV KAFKA_LISTENER_SECURITY_PROTOCOL=PLAINTEXT
ENV KAFKA_LISTENER_LISTENER_SECURITY_PROTOCOL=PLAINTEXT
ENV KAFKA_LOG_DIRS=/var/lib/kafka/data
ENV KAFKA_LISTENERS=INSIDE://0.0.0.0:9093
ENV KAFKA_ZOOKEEPER_CONNECT=localhost:2181
ENV KAFKA_LISTENER_PORT=9093

# Открываем порты для Kafka и Zookeeper
EXPOSE 9093 2181

# Запускаем Zookeeper и Kafka в одном контейнере
CMD ["bash", "-c", "zookeeper-server-start /etc/kafka/zookeeper.properties & kafka-server-start /etc/kafka/server.properties"]
