CREATE OR REPLACE TABLE `uber-de-project-401405.uber_de_project_himanshu.final_table` AS (
SELECT
  f.VendorID,
  p.passenger_count,
  td.trip_distance,
  rc.RatecodeID,
  f.store_and_fwd_flag,
  pl.pickup_latitude,
  pl.pickup_longitude,
  dl.dropoff_latitude,
  dl.dropoff_longitude,
  pt.payment_type,
  f.fare_amount,
  f.extra,
  f.mta_tax,
  f.tip_amount,
  f.tolls_amount,
  f.improvement_surcharge,
  f.total_amount
FROM
  `uber-de-project-401405.uber_de_project_himanshu.fact_table` f
  JOIN `uber-de-project-401405.uber_de_project_himanshu.passenger_count_dim` p ON f.passenger_count_id = p.passenger_count_id
  JOIN `uber-de-project-401405.uber_de_project_himanshu.trip_distance_dim` td ON f.trip_distance_id = td.trip_distance_id
  JOIN `uber-de-project-401405.uber_de_project_himanshu.rate_code_dim` rc ON f.rate_code_id = rc.rate_code_id
  JOIN `uber-de-project-401405.uber_de_project_himanshu.pickup_location_dim` pl ON f.pickup_location_id = pl.pickup_location_id
  JOIN `uber-de-project-401405.uber_de_project_himanshu.dropoff_location_dim` dl ON f.dropoff_location_id = dl.dropoff_location_id
  JOIN `uber-de-project-401405.uber_de_project_himanshu.payment_type_dim` pt ON f.payment_type_id = pt.payment_type_id);