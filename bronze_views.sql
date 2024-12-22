CREATE DATABASE zhengying_homework;
CREATE EXTERNAL TABLE IF NOT EXISTS zhengying_homework.bronze_views (
    article STRING,
    views INT,
    rank INT,
    date DATE,
    retrieved_at TIMESTAMP
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
WITH SERDEPROPERTIES (
    "serialization.format" = "1"
)
LOCATION 's3://zhengying-athena-bucket/datalake/views/';
