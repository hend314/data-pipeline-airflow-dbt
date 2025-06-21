# dbt-airflow-snowflake

This project demonstrates a data pipeline using **dbt (Data Build Tool)** and **Apache Airflow**, targeting a **Snowflake** data warehouse.

## Project Structure

dbt_project/
├── airflow/                 # Airflow setup
│   ├── config/              # Config files
│   ├── dags/                # DAG files
│   ├── logs/                # Logs
│   ├── plugins/             # Plugins
│   └── docker-compose.yml   # Docker setup
├── data_set/                # Raw data
└── dbt/                     # dbt project
    ├── models/              # SQL models
    ├── tests/               # Data tests
    ├── macros/              # SQL functions
    ├── seeds/               # Reference data
    └── dbt_project.yml      # dbt config

---

## Features

- **Airflow DAG** to orchestrate dbt models (`dbt run`) and run data quality checks (`dbt test`)
- **Dockerized setup** for local development using `docker-compose`
- **Modular project structure** for easy organization and scaling
- **Snowflake integration** using dbt profiles

---

## How to Run Locally

1. **Install Docker** if you haven't already.
2. **Navigate to the project folder**:
   ```bash
   cd dbt_project/airflow
3. **Run Airflow** with Docker Compose:
   docker-compose up --build
4. **Open Airflow UI** in your browser:
   
   http://localhost:8080
5. **Trigger the DAG** named dbt_dag from the Airflow UI to run dbt models and tests.

