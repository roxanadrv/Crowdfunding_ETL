-- Table schema for crowdfunding_db Postgres database

CREATE TABLE "category" (
    "category_id" VARCHAR(4) NOT NULL PRIMARY KEY,
    "category" VARCHAR(20) NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(8) NOT NULL PRIMARY KEY,
    "subcategory" VARCHAR(20) NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" INT NOT NULL PRIMARY KEY,
    CHECK ("contact_id" >= 1000 AND "contact_id" <= 9999),
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "email" VARCHAR(100) NOT NULL
);

CREATE TABLE "campaign" (
    "cf_id" VARCHAR(4) NOT NULL PRIMARY KEY,
    "contact_id" INT NOT NULL,
    CHECK ("contact_id" >= 1000 AND "contact_id" <= 9999),
    FOREIGN KEY ("contact_id") REFERENCES contacts(contact_id),
    "company names" VARCHAR(100) NOT NULL,
    "description" VARCHAR (500) NOT NULL,
    "goal" FLOAT NOT NULL,
    "pledged" FLOAT NOT NULL,
    "outcome" VARCHAR(10) NOT NULL,
    "backers_count" INT NOT NULL,
    "country" VARCHAR(2) NOT NULL,
    "currency" VARCHAR(3) NOT NULL,
    "launch_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "staff_pick" BOOLEAN NOT NULL,
    "spotlight" BOOLEAN NOT NULL,
    "category_id" VARCHAR(4) NOT NULL,
    FOREIGN KEY ("category_id") REFERENCES category(category_id),
    "subcategory_id" VARCHAR(8) NOT NULL,
    FOREIGN KEY ("subcategory_id") REFERENCES subcategory(subcategory_id)
);

-- Verify table creation via SELECT
-- Import the CSV files
-- Verify data imported successfully via running SELECT again

SELECT *
FROM category
;

SELECT *
FROM subcategory
;

SELECT *
FROM contacts
;

SELECT *
FROM campaign
;
