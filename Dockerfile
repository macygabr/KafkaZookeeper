# Используем официальный образ cp-kafka от Confluent
FROM confluentinc/cp-kafka:latest

# Устанавливаем переменные окружения для Kafka
ENV KAFKA_LISTENER_SECURITY_PROTOCOL=PLAINTEXT

# Адрес для внешнего использования
ENV KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://localhost:9092  
# Адрес для внутреннего использования
ENV KAFKA_LISTENER_LISTENER=PLAINTEXT://0.0.0.0:9092  
# Указываем Zookeeper
ENV KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181  
# Порт для прослушивания
ENV KAFKA_LISTENER_PORT=9092  

# Открываем порты для Kafka и Zookeeper
EXPOSE 9092 2181

CMD ["/etc/confluent/docker/run"]