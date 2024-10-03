SELECT MAX("entropy") AS 'Max Entropy with Edo'
FROM "views"
WHERE "english_title" LIKE '%edo%'
ORDER BY "entropy" DESC
LIMIT 1;
