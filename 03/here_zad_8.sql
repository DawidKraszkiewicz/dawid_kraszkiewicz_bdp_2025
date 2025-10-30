CREATE TABLE t2019_kar_bridges AS
SELECT ST_Intersection(r.geom, w.geom) AS geom
FROM t2019_kar_railways karr
JOIN t2019_kar_water_lines karwl
ON ST_Intersects(r.geom, w.geom)
WHERE ST_Dimension(ST_Intersection(r.geom, w.geom)) = 0; 