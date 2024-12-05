FROM confluentinc/cp-kafka:latest

# Устанавливаем переменные окружения для Kafka
ENV KAFKA_ADVERTISED_LISTENERS=INSIDE://kafka:9093
ENV KAFKA_LISTENER_SECURITY_PROTOCOL=PLAINTEXT
ENV KAFKA_LISTENER_LISTENER_SECURITY_PROTOCOL=PLAINTEXT
ENV KAFKA_LISTENERS=INSIDE://0.0.0.0:9093
ENV KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181
ENV KAFKA_LISTENER_PORT=9093

EXPOSE 9093

CMD ["bash", "-c", "/etc/confluent/docker/run"]
