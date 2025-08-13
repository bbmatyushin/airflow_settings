### Запуск Airflow в docker контейнере

Для генерации значения в файле .env переменной AIRFLOW__CORE__FERNET_KEY:
```bash
python3 -c "from cryptography.fernet import Fernet; print(Fernet.generate_key().decode())"
```

```bash
docker compose down --volumes --remove-orphans  # Очистка окружающей среды
docker compose up airflow-init  # Инициализируйте базу данных 
docker compose up  # START Airflow
```
