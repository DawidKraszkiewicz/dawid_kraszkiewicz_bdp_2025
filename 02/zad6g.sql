SELECT
  b.name
FROM buildings b
JOIN roads r ON r.name = 'roadX'
WHERE ST_Y(ST_Centroid(b.geometry)) > ST_Y(ST_StartPoint(r.geometry));
