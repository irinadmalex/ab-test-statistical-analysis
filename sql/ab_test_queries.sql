# Общая статистика по группам
SELECT
  variant,
  COUNT(*) AS users,
  SUM(converted) AS conversions,
  ROUND(AVG(converted) * 100, 2) AS conversion_rate,
  ROUND(AVG(time_spent_seconds), 1) AS avg_time_spent
FROM mytestproject1-477512.abtest_dataset.abtest1
  GROUP BY variant
  ORDER BY variant

# Конверсия по устройствам и группам
SELECT
  device,
  variant,
  COUNT(*) AS users,
  SUM(converted) AS conversions,
  ROUND(AVG(converted) * 100, 2) AS conversion_rate
FROM `mytestproject1-477512.abtest_dataset.abtest1`
GROUP BY device, variant
ORDER BY device, variant

# Статистика по landing pages
SELECT
  landing_page,
  variant,
  COUNT(*) AS users,
  ROUND(AVG(converted) * 100, 2) AS conversion_rate
FROM `mytestproject1-477512.abtest_dataset.abtest1`
GROUP BY landing_page, variant
ORDER BY landing_page, variant

# Динамика по дням
SELECT
  DATE(timestamp) AS date,
  variant,
  COUNT(*) AS users,
  SUM(converted) AS conversions,
  ROUND(AVG(converted) * 100, 2) AS conversion_rate
FROM `mytestproject1-477512.abtest_dataset.abtest1`
GROUP BY date,variant
ORDER BY date, variant
