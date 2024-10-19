SELECT "friends"."friend_id"
FROM "friends"
JOIN "users" ON "users"."id" = "friends"."user_id"
WHERE "users"."username" = 'lovelytrust487'
INTERSECT
SELECT "friends"."friend_id"
FROM "friends"
JOIN "users" ON "users"."id" = "friends"."user_id"
WHERE "users"."username" = 'exceptionalinspiration482';
