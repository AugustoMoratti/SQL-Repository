-- Solo en postgress
SELECT
  COUNT(*) FILTER (WHERE device_type = 'laptop') AS laptop_views,
  COUNT(*) FILTER (WHERE device_type in ('tablet', 'phone')) AS mobile_views
FROM viewership;

-- Se puede reemplazar en SQL con : 
SELECT
  SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_views,
  SUM(CASE WHEN device_type in ('tablet', 'phone') THEN 1 ELSE 0 END) AS laptop_views
FROM viewership;