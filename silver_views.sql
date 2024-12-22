CREATE EXTERNAL TABLE IF NOT EXISTS zhengying_homework.silver_views (
    article STRING,
    views INT,
    rank INT,
    retrieved_at TIMESTAMP
)
PARTITIONED BY (date DATE)
STORED AS PARQUET
LOCATION 's3://zhengying-athena-bucket/datalake/views_silver/';
