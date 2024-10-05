
-- *** The Lost Letter ***
SELECT "id"
FROM "addresses"
WHERE "address" = '900 Somerville Avenue';

SELECT *
FROM "packages"
WHERE "from_address_id" = '432';

SELECT "address", "type"
FROM "addresses"
WHERE "id" = '854';

-- *** The Devious Delivery ***
SELECT *
FROM "packages"
WHERE "from_address_id" IS NULL;

SELECT *
FROM "scans"
WHERE "package_id" IS '5098';

SELECT *
FROM "addresses"
WHERE "id" = '348';


-- *** The Forgotten Gift ***
-- There is one gift had been picked but not dropped yet.
SELECT "contents", "name", "action", "timestamp" FROM "packages"
JOIN "scans" ON "packages"."id" = "scans"."package_id"
JOIN "drivers" ON "drivers"."id" = "scans"."driver_id"
JOIN "addresses" AS "af" ON "packages"."from_address_id" = "af"."id"
JOIN "addresses" AS "at" ON "packages"."to_address_id" = "at"."id"
WHERE "af"."address" = '109 Tileston Street'
    AND "at"."address" = '728 Maple Place';
