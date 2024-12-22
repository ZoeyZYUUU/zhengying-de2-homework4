CREATE EXTERNAL TABLE IF NOT EXISTS zhengying_homework.gold_allviews (
    article STRING,
    total_top_view INT,
    top_rank INT,
    ranked_days INT
)
STORED AS PARQUET
LOCATION 's3://zhengying-athena-bucket/datalake/gold_allviews/';
