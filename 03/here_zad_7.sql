SELECT COUNT(DISTINCT kpoi.gid) AS n
FROM T2019_KAR_POI_TABLE kpoi, t2019_kar_land_use_a klua
WHERE kpoi.type = 'Sporting Goods Store'
AND ST_DWithin(kpoi.geom, klua.geom, 300);