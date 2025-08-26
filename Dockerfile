# Выполнить отдельную сборку для Dockerfile, чтобы получить образ airflow_custom:3.0.4
# docker build -t airflow_custom:3.0.4 .
FROM apache/airflow:3.0.4

USER root
RUN apt-get update && apt-get install -y openssh-client --no-install-recommends && rm -rf /var/lib/apt/lists/*

USER airflow
RUN pip install apache-airflow-providers-ssh
FROM apache/airflow:3.0.4

USER root
RUN apt-get update && apt-get install -y openssh-client --no-install-recommends && rm -rf /var/lib/apt/lists/*

USER airflow
RUN pip install apache-airflow-providers-ssh
