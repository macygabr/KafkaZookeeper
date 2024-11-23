# Используем официальный образ cp-kafka от Confluent
FROM confluentinc/cp-kafka:latest

# Устанавливаем переменные окружения для Kafka
ENV KAFKA_LISTENER_SECURITY_PROTOCOL=PLAINTEXT
ENV KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://localhost:9092  # Адрес для внешнего использования
ENV KAFKA_LISTENER_LISTENER=PLAINTEXT://0.0.0.0:9092  # Адрес для внутреннего использования
ENV KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181  # Указываем Zookeeper
ENV KAFKA_LISTENER_PORT=9092  # Порт для прослушивания

# Открываем порты для Kafka и Zookeeper
EXPOSE 9092 2181

# Запуск Kafka с помощью настроек
CMD ["/etc/confluent/docker/run"]
