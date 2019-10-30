\c gis
CREATE TABLE "elevation_raster" ("rid" serial PRIMARY KEY,"rast" raster);
GRANT ALL ON TABLE elevation_raster TO maps;
