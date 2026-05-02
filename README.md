# GIST 604B – OSM & PostGIS

**Student:** Lydia Barker
**Course:** GIST 604B – Open Source GIS
**Module:** Module 5 - OMS and PostGIS Spatial Analysis
**University of Arizona**

## Project Description
This project develops a workflow for spatial analysis using OpenStreetMap data, PostGIS, and Python. It involves loading OSM shapefiles into a PostGIS database, running spatial SQL queries, and visualizing results through Jupyter Notebooks. The workflow is first devloped for Arizona data, then adapted to Oregon data as a new area of interest.

## Tools and Technologies
- PostGIS & PostgresSQL
- Geopandas
- Matplotlib
- Geofabrik

## What I Did
- Set up a PostGIS database and loaded OSM shapefiles 
- Developed a reusable Python setup workflow in the .py file (found in the src folder) 
- Explored and ran spatial SQL queries on Arizona data
- Executed SQL queries through a Jupyter Notebook and analyzed the results
- Attempted to adapt the full workflow to a new area of interest with three original spatial SQL queries

## How to View / Run
- Fork the repository and open it in a GitHub Codespace
- Start the PostGIS database container by running docker compose up -d in the terminal
- Open and run notebooks/setup_osm_postgis.ipynb to set up the database and load OSM data
- Open notebooks/osm_postgis_queries.ipynb to run the Arizona SQL queries
- Open notebooks/osm_postgis_barker.ipynb to view the custom area of interest analysis

## Repository Structure

```
/
├── .devcontainer/
│   ├── Dockerfile
│   └── devcontainer.json
├── notebooks/
│   ├── setup_osm_postgis.ipynb
│   ├── osm_postgis_queries.ipynb
│   └── osm_postgis_YOUR_AOI_NAME.ipynb
├── sql/
│   ├── arizona/
│   │   ├── 01_osm_restaurant_distribution.sql
│   │   ├── 02_osm_park_area_by_county.sql
│   │   ├── 03_osm_restaurants_near_streets.sql
│   │   ├── 04_osm_railway_density_by_county.sql
│   │   └── 05_osm_county_amenity_synthesis.sql
│   └── oregon_notebook/
│       ├── 01_osm_bicycle_parking_locations.sql
│       ├── 02_osm_locations_by_admin_unit.sql
│       └── 03_osm_proximity_to_destinations.sql
├── src/
│   └── setup_osm_postgis.py
├── .gitignore
├── docker-compose.yml
├── pyproject.toml
├── uv.lock
└── README.md
```

## Notes

- Notebooks are for exploration and learning.
- sql/arizona folder contains sql scripts discussed in the lectures.
- Data is downloaded and prepared inside the Codespace environment and is not stored in this repository.
- The database runs in a separate PostGIS container using Docker.
