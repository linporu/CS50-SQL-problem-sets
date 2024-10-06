SELECT DISTINCT "teams"."name"
FROM "performances"
JOIN "players" ON "players"."id" = "performances"."player_id"
JOIN "teams" ON "teams"."id" = "performances"."team_id"
WHERE "first_name" = 'Satchel'
    AND "last_name" = 'Paige'
