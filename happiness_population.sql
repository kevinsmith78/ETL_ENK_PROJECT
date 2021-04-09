CREATE TABLE "happiness" (
    "overall_rank" INT   NOT NULL,
    "country_name" VARCHAR(30)   NOT NULL,
    "score" numeric NOT NULL
);

CREATE TABLE "population" (
    "country_name" VARCHAR(100)   NOT NULL,
    "2019_population" numeric NULL
);

select * from happiness

select * from population

select happiness.country_name, happiness.overall_rank, round(happiness.score,2) as score, population."2019_population"
from happiness
left join population
on population.country_name = happiness.country_name
order by happiness.overall_rank
