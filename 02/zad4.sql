CREATE TABLE buildings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    geometry GEOMETRY(POLYGON, 0) 
);

CREATE TABLE roads (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    geometry GEOMETRY(LINESTRING, 0)
);

CREATE TABLE poi (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    geometry GEOMETRY(POINT, 0)
);