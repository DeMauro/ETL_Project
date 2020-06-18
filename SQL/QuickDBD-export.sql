-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/TPpt0y
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "cars" (
    "make" VARCHAR   NOT NULL,
    "model" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "mpg" INT   NOT NULL,
    "fuel" VARCHAR   NOT NULL,
    "size_class" VARCHAR   NOT NULL,
    "cylinders" INT   NOT NULL,
    "displacement_liters" DECIMAL   NOT NULL,
    "drive" VARCHAR   NOT NULL,
    "transmisson" VARCHAR   NOT NULL,
    "super_charger" BOOLEAN   NOT NULL,
    "turbo_charger" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_cars" PRIMARY KEY (
        "make","model","year")
);

CREATE TABLE "craigs_list" (
    "make" VARCHAR   NOT NULL,
    "model" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "craigslist_price" INT   NOT NULL,
    "image_url" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "paint_color" VARCHAR   NOT NULL,
    "state" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,
    "lat" FLOAT   NOT NULL,
    "lng" FLOAT   NOT NULL
);

CREATE TABLE "auction_list" (
    "make" VARCHAR   NOT NULL,
    "model" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "color" VARCHAR   NOT NULL,
    "auction_price" INT   NOT NULL,
    "state" VARCHAR   NOT NULL,
    "lat" FLOAT   NOT NULL,
    "lng" FLOAT   NOT NULL
);

CREATE TABLE "gas_cost" (
    "state" VARCHAR   NOT NULL,
    "regular" FLOAT   NOT NULL,
    "mid-grade" FLOAT   NOT NULL,
    "premium" FLOAT   NOT NULL,
    "diesel" FLOAT   NOT NULL
);

ALTER TABLE "craigs_list" ADD CONSTRAINT "fk_craigs_list_make_model_year" FOREIGN KEY("make", "model", "year")
REFERENCES "cars" ("make", "model", "year");

ALTER TABLE "craigs_list" ADD CONSTRAINT "fk_craigs_list_state" FOREIGN KEY("state")
REFERENCES "gas_cost" ("state");

ALTER TABLE "auction_list" ADD CONSTRAINT "fk_auction_list_make_model_year" FOREIGN KEY("make", "model", "year")
REFERENCES "cars" ("make", "model", "year");

ALTER TABLE "auction_list" ADD CONSTRAINT "fk_auction_list_state" FOREIGN KEY("state")
REFERENCES "gas_cost" ("state");

