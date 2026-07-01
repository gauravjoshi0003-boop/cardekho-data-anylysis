-- ============================================================
-- CarDekho Dataset — SQL Queries
-- ============================================================

-- 1. Maruti Swift / Alto / Baleno, Petrol, mileage < 19
SELECT *
FROM cardekho_dataset
WHERE brand = 'Maruti'
  AND car_name IN ('maruti swift', 'maruti alto', 'maruti baleno')
  AND fuel_type = 'petrol'
  AND mileage < '19';


-- 2. Top 20 cars by selling price (descending)
SELECT brand
FROM cardekho_dataset
ORDER BY selling_price DESC
LIMIT 20;


-- 3. Overall selling price summary
SELECT
    COUNT(car_name) AS cnt_cars,
    SUM(selling_price) AS total_selling_price,
    AVG(selling_price) AS avg_selling_price,
    MAX(selling_price) AS highest_selling_price,
    MIN(selling_price) AS lowest_selling_price
FROM cardekho_dataset;


-- 4. Car count with highest & lowest selling price
SELECT
    COUNT(car_name) AS cnt_cars,
    MAX(selling_price) AS highest_selling_price,
    MIN(selling_price) AS lowest_selling_price
FROM cardekho_dataset;


-- 5. Brand-wise car count, ordered descending
SELECT
    brand,
    COUNT(car_name) AS cnt_cars
FROM cardekho_dataset
GROUP BY brand
ORDER BY cnt_cars DESC;
