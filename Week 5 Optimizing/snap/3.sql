SELECT "to_user_id"
FROM "messages"
JOIN "users" ON "users"."id" = "messages"."from_user_id"
WHERE "username" = 'creativewisdom377'
GROUP BY "to_user_id"
ORDER BY COUNT("messages"."id") DESC
LIMIT 3;
