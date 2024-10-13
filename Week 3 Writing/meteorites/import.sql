-- CREATE TABLE FIRST
CREATE TABLE meteorites (
    "id" INTEGER,
    "name" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT TEXT NOT NULL CHECK("discovery" IN ('Fell', 'Found')),
    "year" NUMERIC,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY("id")
);


-- IMPORT DATA TO A TEMP TABLE
.import --csv meteorites.csv meteorites_temp


-- CLEAN DATA
-- Any empty values in meteorites.csv are represented by NULL in the meteorites table.
-- Keep in mind that the mass, year, lat, and long columns have empty values in the CSV.
UPDATE "meteorites_temp"
SET
    "mass" = CASE WHEN "mass" = '' THEN NULL ELSE "mass" END,
    "year" = CASE WHEN "year" = '' THEN NULL ELSE "year" END,
    "lat" = CASE WHEN "lat" = '' THEN NULL ELSE "lat" END,
    "long" = CASE WHEN "long" = '' THEN NULL ELSE "long" END;


-- All columns with decimal values (e.g., 70.4777) should be rounded to the nearest hundredths place (e.g., 70.4777 becomes 70.48).
-- Keep in mind that the mass, lat, and long columns have decimal values.
UPDATE "meteorites_temp"
SET
    "mass" = ROUND("mass", 2),
    "lat" = ROUND("lat", 2),
    "long" = ROUND("long", 2);

-- All meteorites with the nametype “Relict” are not included in the meteorites table.
DELETE FROM "meteorites_temp"
WHERE "nametype" = 'Relict';


-- INSERT DATA INTO TABLE AND REORDER
-- The meteorites are sorted by year, oldest to newest, and then—if any two meteorites landed in the same year—by name, in alphabetical order.
-- You’ve updated the IDs of the meteorites from meteorites.csv, according to the order specified in #4.
-- The id of the meteorites should start at 1, beginning with the meteorite that landed in the oldest year and is the first in alphabetical order for that year.
INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long"
FROM "meteorites_temp"
ORDER BY "year" ASC, "name" ASC;
