SELECT DISTINCT "districts"."name", "per_pupil_expenditure", "exemplary"
FROM "districts"
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "districts"."id"
JOIN "schools" ON "schools"."district_id" = "districts"."id"
WHERE "schools"."type" = 'Public School'
    AND "per_pupil_expenditure" > (
    SELECT AVG("per_pupil_expenditure")
    FROM "expenditures"
)
    AND "exemplary" >  (
        SELECT AVG("exemplary")
        FROM "staff_evaluations"
    )
ORDER BY "exemplary" DESC, "per_pupil_expenditure" DESC;
