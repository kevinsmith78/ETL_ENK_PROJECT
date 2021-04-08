CREATE TABLE "happiness" (
    "overall_rank" INT   NOT NULL,
    "country_name" VARCHAR(30)   NOT NULL,
    "score" INT   NOT NULL
);
​
CREATE TABLE "population" (
    "country_name" VARCHAR(30)   NOT NULL,
    "2019_population" INT   NOT NULL
);

select * from happiness