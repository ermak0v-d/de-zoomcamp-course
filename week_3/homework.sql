CREATE OR REPLACE TABLE extended-cinema-339319.trips_data_all.fhv_tripdata_partitoned_clustered
PARTITION BY
  DATE(pickup_datetime)
CLUSTER BY
  dispatching_base_num
AS
SELECT * FROM extended-cinema-339319.trips_data_all.external_table_fhv;

SELECT count(distinct dispatching_base_num) FROM `extended-cinema-339319.trips_data_all.fhv_tripdata_partitoned_clustered`;

SELECT count(*) FROM `extended-cinema-339319.trips_data_all.fhv_tripdata_partitoned_clustered`;


select count(*) from extended-cinema-339319.trips_data_all.fhv_tripdata_partitoned_clustered;
where date(pickup_datetime) between date('2019-01-01') and date('2019-03-31')
  and dispatching_base_num in ('B00987', 'B02060', 'B02279')
