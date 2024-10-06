SELECT "year", "HR"
FROM "players"
JOIN "performances" ON "performances"."player_id" = "players"."id"
WHERE "first_name" = 'Ken'
    AND "last_name" = 'Griffey'
    AND "birth_year" = '1969'
GROUP BY "year"
ORDER BY "year" DESC;
