SELECT "season"
FROM "episodes"
WHERE "season" IS NOT NULL
AND "topic" IS NOT NULL
GROUP BY "season"
ORDER BY COUNT("episode_in_season") DESC
LIMIT 1;
