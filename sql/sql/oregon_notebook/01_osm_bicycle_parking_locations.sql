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
    gis_osm_pois_free_1
WHERE 
    fclass = 'bicycle_parking';

    SELECT tablename
FROM pg_tables
WHERE schemaname = 'public';