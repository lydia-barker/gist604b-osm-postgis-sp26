-- Query 2: Bicycle Parking by Administrative Unit
-- Purpose: Summarize bicycle parking distribution across administrative areas to evaluate spatial equity and regional accessibility

-- Requirements:
-- - Use pois for bicycle parking points
-- - Use adminareas_a for administrative boundary polygons
-- - Perform spatial join using ST_Within (or equivalent)
-- - Filter POIs where fclass = 'bicycle_parking'
-- - Group results by administrative unit name or identifier
-- - Aggregate using COUNT of bicycle parking features

-- Expected Output:
-- - admin_unit name/ID
-- - bicycle_parking_count

SELECT
  a.name AS admin_unit,
  COUNT(p.id) AS bike_parking_count
FROM pois p
JOIN adminareas_a a
  ON ST_Within(p.geom, a.geom)
WHERE p.fclass = 'bicycle_parking'
GROUP BY a.name
ORDER BY bike_parking_count DESC;