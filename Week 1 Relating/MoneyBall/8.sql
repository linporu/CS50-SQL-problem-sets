SELECT "salary"
FROM "salaries"
JOIN "players" ON "players"."id" = "salaries"."player_id"
JOIN "performances" ON "performances"."player_id" = "players"."id"
WHERE "salaries"."year" = '2001'
ORDER BY "HR" DESC
LIMIT 1;
