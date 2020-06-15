-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/bewOyV
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "cars" (
    "id" VARCHAR   NOT NULL,
    "make" VARCHAR   NOT NULL,
    "model" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "transmission" VARCHAR   NOT NULL,
    CONSTRAINT "pk_cars" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "mpg" (
    "car_id" INT   NOT NULL,
    "mpg" INT   NOT NULL,
    "fuel" VARCHAR   NOT NULL,
    "size_class" VARCHAR   NOT NULL,
    "cylinders" INT   NOT NULL,
    "displacement_liters" INT   NOT NULL,
    "drive" INT   NOT NULL,
    "engine_descriptor" VARCHAR   NOT NULL,
    "super_charger" VARCHAR   NOT NULL,
    "turbo_charger" VARCHAR   NOT NULL
);

CREATE TABLE "craigs_list" (
    "car_id" INT   NOT NULL,
    "listing_id" VARCHAR   NOT NULL,
    "make" VARCHAR   NOT NULL,
    "model" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "price" INT   NOT NULL,
    "image_url" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "paint_color" VARCHAR   NOT NULL,
    "state" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,
    "lat" INT   NOT NULL,
    "lng" INT   NOT NULL,
    CONSTRAINT "pk_craigs_list" PRIMARY KEY (
        "listing_id"
     )
);

CREATE TABLE "auction_list" (
    "car_id" INT   NOT NULL,
    "listing_id" VARCHAR   NOT NULL,
    "make" VARCHAR   NOT NULL,
    "model" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "color" VARCHAR   NOT NULL,
    "auction_price" INT   NOT NULL,
    "state" VARCHAR   NOT NULL,
    "lat" INT   NOT NULL,
    "lng" INT   NOT NULL,
    CONSTRAINT "pk_auction_list" PRIMARY KEY (
        "listing_id","state"
     )
);

CREATE TABLE "gas_cost" (
    "car_auction" VARCHAR   NOT NULL,
    "car_craigs" VARCHAR   NOT NULL,
    "purchase_state" VARCHAR   NOT NULL,
    "purchase_lat" INT   NOT NULL,
    "purchase_lng" INT   NOT NULL,
    "denver_lat" INT   NOT NULL,
    "denver_lng" INT   NOT NULL,
    "distance_denver" INT   NOT NULL
);

ALTER TABLE "mpg" ADD CONSTRAINT "fk_mpg_car_id" FOREIGN KEY("car_id")
REFERENCES "cars" ("id");

ALTER TABLE "craigs_list" ADD CONSTRAINT "fk_craigs_list_car_id" FOREIGN KEY("car_id")
REFERENCES "cars" ("id");

ALTER TABLE "auction_list" ADD CONSTRAINT "fk_auction_list_car_id" FOREIGN KEY("car_id")
REFERENCES "cars" ("id");

ALTER TABLE "gas_cost" ADD CONSTRAINT "fk_gas_cost_car_auction" FOREIGN KEY("car_auction")
REFERENCES "auction_list" ("listing_id");

ALTER TABLE "gas_cost" ADD CONSTRAINT "fk_gas_cost_car_craigs" FOREIGN KEY("car_craigs")
REFERENCES "craigs_list" ("listing_id");

