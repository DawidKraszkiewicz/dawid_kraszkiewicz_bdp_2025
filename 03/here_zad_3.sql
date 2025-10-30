CREATE TABLE streets_reprojected AS
SELECT tks.*, ST_Transform(tks.geom, 3068) AS geom_reprojected
FROM T2019_KAR_STREETS tks;