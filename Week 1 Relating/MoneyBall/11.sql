SELECT "first_name", "last_name", ("salary" / SUM("H")) AS "dollars per hit"
FROM "performances"
JOIN "players" ON "players"."id" = "performances"."player_id"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
WHERE "performances"."year" = '2001'
    AND "salaries"."year" = '2001'
GROUP BY "players"."id"
HAVING SUM("H") > 0
ORDER BY "dollars per hit" ASC, "first_name" ASC, "last_name" ASC
LIMIT 10;
