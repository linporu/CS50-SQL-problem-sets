SELECT "first_name", "last_name", "salary", "HR", "performances"."year"
FROM "performances"
JOIN "players" ON "players"."id" = "performances"."player_id"
JOIN "teams" ON "teams"."id" = "performances"."team_id"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
WHERE "salaries"."year" = "performances"."year"
ORDER BY "performances"."player_id", "performances"."year" DESC, "HR" DESC, "salary" DESC
