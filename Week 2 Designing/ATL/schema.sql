CREATE TABLE passengers (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE check_ins (
    "id" INTEGER,
    "passenger_id" INTEGER,
    "timestamp" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "flight_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY ("passenger_id") REFERENCES "passengers"("id"),
    FOREIGN KEY ("flight_id") REFERENCES "flights"("id")
);

CREATE TABLE airlines (
    "id" INTEGER,
    "name" TEXT,
    "concourse_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY ("concourse_id") REFERENCES "concourses"("id")
);

CREATE TABLE concourses (
    "id" INTEGER,
    "code" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE flights (
    "id" INTEGER,
    "flight_num" INTEGER NOT NULL,
    "airline_id" INTEGER,
    "from_airport_id" INTEGER,
    "to_airport_id" INTEGER,
    "departure_time" NUMERIC NOT NULL,
    "arrive_time" NUMERIC NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY ("airline_id") REFERENCES "airlines"("id"),
    FOREIGN KEY ("from_airport_id") REFERENCES "airports"("id"),
    FOREIGN KEY ("to_airport_id") REFERENCES "airports"("id")
);

CREATE TABLE airports (
    "id" INTEGER,
    "code" INTEGER,
    PRIMARY KEY("id")
);
