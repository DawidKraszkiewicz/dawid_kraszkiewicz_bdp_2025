WITH new_buildings AS (
    SELECT t9.geom
    FROM t2019_kar_buildings t9
    LEFT JOIN t2018_kar_buildings t8
        ON t9.geom = t8.geom  
    WHERE t8.geom IS NULL
) 
SELECT poi9.type, COUNT(*) AS n
FROM t2019_kar_poi_table poi9
LEFT JOIN t2018_kar_poi_table poi8
    ON poi9.geom = poi8.geom 
WHERE poi8.geom IS NULL
AND EXISTS (
    SELECT 1
    FROM new_buildings nb
    WHERE ST_DWithin(poi9.geom, nb.geom, 500)  
)
GROUP BY poi9.type;




--Common Table Expression (CTE) new_buildings:
--Selects geometries (geom) of buildings from the 2019 dataset (t2019_kar_buildings).
--Performs a LEFT JOIN with the 2018 buildings dataset (t2018_kar_buildings) on exact geometry equality (t9.geom = t8.geom).
--Filters for buildings where no match exists in 2018 (WHERE t8.geom IS NULL), meaning these are newly built structures.
--This CTE defines the set of new buildings for later use.
--Main Query:
--Selects POI type (poi9.type) and counts occurrences (COUNT(*) AS n).
--From the 2019 POI dataset (t2019_kar_poi_table).
--LEFT JOINs with the 2018 POI dataset (t2018_kar_poi_table) on exact geometry equality (poi9.geom = poi8.geom).
--Filters for POIs where no match exists in 2018 (WHERE poi8.geom IS NULL), meaning these are new POIs.
--Additionally, uses an EXISTS subquery to check if the POI is within 500 meters of any new building:
--ST_DWithin(poi9.geom, nb.geom, 500) checks for proximity (distance ≤ 500 units, assuming meters based on the SRID).
--Groups results by POI type (GROUP BY poi9.type).