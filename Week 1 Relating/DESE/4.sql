SELECT "city", COUNT("type")
FROM "schools"
WHERE "type" = "Public School"
GROUP BY "city"
ORDER BY COUNT("type") DESC, "city"
LIMIT 10;
