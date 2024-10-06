SELECT "first_name", "last_name"
FROM "players"
WHERE "players"."id" IN (
    SELECT "players"."id"
    FROM "players"
    JOIN "performances" ON "players"."id" = "performances"."player_id"
    JOIN "salaries" ON "players"."id" = "salaries"."player_id"
    WHERE "performances"."year" = '2001'
        AND "salaries"."year" = '2001'
    GROUP BY "players"."id"
    HAVING SUM("H") > 0
    ORDER BY ("salary" / SUM("H")) ASC
    LIMIT 10
)
    AND "players"."id" IN (
        SELECT "players"."id"
        FROM "players"
        JOIN "performances" ON "players"."id" = "performances"."player_id"
        JOIN "salaries" ON "players"."id" = "salaries"."player_id"
        WHERE "performances"."year" = '2001'
            AND "salaries"."year" = '2001'
        GROUP BY "players"."id"
        HAVING SUM("RBI") > 0
        ORDER BY ("salary" / SUM("RBI")) ASC
        LIMIT 10
    )
ORDER BY "players"."id" ASC;
