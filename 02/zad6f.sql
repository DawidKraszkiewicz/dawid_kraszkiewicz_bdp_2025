SELECT
  ST_Area(
    ST_Difference(c.geometry, ST_Buffer(b.geometry, 0.5))
  ) AS area_farther_than_0_5
FROM buildings c
JOIN buildings b ON b.name = 'buildingB'
WHERE c.name = 'buildingC';