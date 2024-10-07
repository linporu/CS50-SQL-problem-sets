CREATE TABLE users (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "username" TEXT,
    "hashed_password" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE schools (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "type" TEXT,
    "location" TEXT,
    "found_year" NUMERIC,
    PRIMARY KEY("id")
);

CREATE TABLE companies (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE connections (
    "id" INTEGER,
    "from_user_id" INTEGER,
    "to_user_id" INTEGER,
    "to_school_id" INTEGER,
    "to_company_id" INTEGER,
    "start_affiliation_at" TIMESTAMP,
    "end_affiliation_at" TIMESTAMP,
    "degree" TEXT,
    "title" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("from_user_id") REFERENCES "users"("id"),
    FOREIGN KEY("to_user_id") REFERENCES "users"("id"),
    FOREIGN KEY("to_school_id") REFERENCES "schools"("id"),
    FOREIGN KEY("to_company_id") REFERENCES "companies"("id")
);
