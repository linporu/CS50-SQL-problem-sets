SELECT "schools"."name", "per_pupil_expenditure", "graduated"
FROM "schools"
JOIN "districts" ON "schools"."district_id" = "districts"."id"
JOIN "graduation_rates" ON "graduation_rates"."school_id" = "schools"."id"
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
ORDER BY "per_pupil_expenditure" DESC, "schools"."name";
