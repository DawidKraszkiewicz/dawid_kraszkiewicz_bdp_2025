WITH shortest AS (
    SELECT ST_ShortestLine(o3.geom, o4.geom) AS lines
    FROM obiekty o3, obiekty o4
    WHERE o3.nazwa = 'obiekt3' AND o4.nazwa = 'obiekt4'
)
SELECT ST_Area(ST_Buffer(lines, 5)) AS area
FROM shortest
LIMIT 1;