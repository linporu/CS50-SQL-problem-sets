CREATE TABLE ingredients (
    "id" INTEGER,
    "name" TEXT UNIQUE,
    "price_per_unit" NUMERIC,
    "unit" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE donuts (
    "id" INTEGER,
    "name" TEXT UNIQUE,
    "is_gluten_free" TEXT NOT NULL CHECK("is_gluten_free" IN ('YES', 'NO')),
    "price" NUMERIC,
    PRIMARY KEY("id")
);

CREATE TABLE produces (
    "donut_id" INTEGER,
    "ingredient_id" INTEGER,
    "amount" NUMERIC,
    FOREIGN KEY("ingredient_id") REFERENCES "ingredients"("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id")
);

CREATE TABLE orders (
    "id" INTEGER,
    "timestamp" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "customer_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE order_items (
    "id" INTEGER,
    "order_id" INTEGER,
    "donut_id" INTEGER,
    "amount" INTEGER NOT NULL CHECK("amount" != 0),
    PRIMARY KEY("id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id")
);

CREATE TABLE customers (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    PRIMARY KEY("id")
);
