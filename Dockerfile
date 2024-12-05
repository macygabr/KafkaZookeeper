FROM rancher/k3s:v1.27.4-k3s1

# Порт для Kubernetes API
EXPOSE 6443

# Запуск k3s-сервера
CMD ["server", "--disable-agent"]