SELECT "schools"."name", "dropped", "excluded", "per_pupil_expenditure", "exemplary"
FROM "graduation_rates"
JOIN "schools" ON "schools"."id" = "graduation_rates"."school_id"
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
JOIN "districts" ON "schools"."district_id" = "districts"."id"
JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "districts"."id"
WHERE "dropped" != 0 or "excluded" != 0
ORDER BY "dropped" DESC, "excluded" DESC;
