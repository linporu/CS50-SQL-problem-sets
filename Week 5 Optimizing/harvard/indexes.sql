CREATE INDEX "search_enrollments_by_student_id_index" ON "enrollments" ("student_id");
CREATE INDEX "search_enrollments_by_course_id_index" ON "enrollments" ("course_id");
CREATE INDEX "search_courses_by_department_index" ON "courses" ("department");
CREATE INDEX "search_courses_by_number_index" ON "courses" ("number");
CREATE INDEX "search_courses_by_semester_index" ON "courses" ("semester");
CREATE INDEX "search_satisfies_by_course_id_index" ON "satisfies" ("course_id");
