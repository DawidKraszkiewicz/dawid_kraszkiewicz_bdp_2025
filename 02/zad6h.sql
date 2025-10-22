SELECT
  ST_Area(
    ST_SymDifference(
      c.geometry,
      ST_SetSRID(
        ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))'),
        ST_SRID(c.geometry)
      )
    )
  ) AS symdiff_area
FROM buildings c
WHERE c.name = 'buildingC';