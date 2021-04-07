-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/vSAHdi
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "happiness" (
    "overall_rank" INT   NOT NULL,
    "country_name" VARCHAR(30)   NOT NULL,
    "score" INT   NOT NULL
);

CREATE TABLE "population" (
    "country_name" VARCHAR(30)   NOT NULL,
    "2019_population" INT   NOT NULL
);

ALTER TABLE "population" ADD CONSTRAINT "fk_population_country_name" FOREIGN KEY("country_name")
REFERENCES "happiness" ("country_name");

