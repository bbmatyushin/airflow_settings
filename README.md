# airflow-3.0.4
## Готовый docker-compose.yaml для запуска Airflow 3.0.4

### Изменить .env
```bash
mv .env_example .env
```
В **.env** просать свои значения

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

* `docker-compose.yml` - для версии 3.3
* `docker-compose.yaml` - для версии 3.8
