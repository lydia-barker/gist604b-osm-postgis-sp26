-- Query 1: Bicycle Parking Locations
-- Purpose: Extract bicycle parking locations for spatial distribution analysis and to establish the base dataset for all subsequent spatial operations

-- Requirements:
-- - Use pois for point features
-- - Filter POIs where fclass = 'bicycle_parking'
-- - Return raw point geometries
-- - No spatial joins or aggregations in this step

-- Expected Output:
-- - geom

SELECT 
    geom
FROM 
    pois
WHERE 
    fclass = 'bicycle_parking';