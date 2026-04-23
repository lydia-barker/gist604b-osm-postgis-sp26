-- Query 3: Bicycle Parking Proximity to Key Destinations
-- Purpose: Measure spatial accessibility by analyzing proximity between bicycle parking and key destinations such as hospitals, schools, and parks

-- Requirements:
-- - Use pois for bicycle parking, hospitals, and schools
-- - Use landuse_a (or natural_a) for parks
-- - Filter using fclass values:
--   - 'bicycle_parking'
--   - 'hospital'
--   - 'school'
--   - 'park' (or equivalent landuse classification)
-- - Use ST_DWithin to calculate proximity (e.g., 500–1000 meter buffer)
-- - Aggregate counts of nearby destinations per bicycle parking feature

-- Expected Output:
-- - bike_parking_id
-- - hospitals_within_buffer
-- - schools_within_buffer
-- - parks_within_buffer

SELECT
  b.id AS bike_parking_id,
  COUNT(DISTINCT h.id) AS hospitals_within_1000m,
  COUNT(DISTINCT s.id) AS schools_within_1000m,
  COUNT(DISTINCT p.id) AS parks_within_1000m
FROM pois b

LEFT JOIN pois h
  ON h.fclass = 'hospital'
  AND ST_DWithin(b.geom, h.geom, 1000)

LEFT JOIN pois s
  ON s.fclass = 'school'
  AND ST_DWithin(b.geom, s.geom, 1000)

LEFT JOIN landuse_a p
  ON p.fclass = 'park'
  AND ST_DWithin(b.geom, p.geom, 1000)

WHERE b.fclass = 'bicycle_parking'
GROUP BY b.id;