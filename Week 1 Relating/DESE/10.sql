SELECT DISTINCT "districts"."name", "per_pupil_expenditure"
FROM "districts"
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
JOIN "schools" ON "schools"."district_id"  = "districts"."id"
WHERE "schools"."type" = 'Public School'
ORDER BY "per_pupil_expenditure" DESC
LIMIT 10;
