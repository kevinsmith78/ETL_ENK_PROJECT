# ETL_ENK_PROJECT
ETL Project for Biz
                                                                    1)  Extract

1) Data source
1a) Found https://www.kaggle.com/unsdsn/world-happiness (World Happiness Report)
1b) Found https://data.worldbank.org/indicator/SP.POP.TOTL (World Population Report)

2) Then read csv in Pandas, made dataframe
2a) World Happiness Report
world_happiness_df = pd.read_csv(csv_file)
world_happiness_df.head()
2b) World Population Report 
csv_file2 = "world_1.csv"
worldPop_df = pd.read_csv(csv_file2,encoding='latin1')
worldPop_df.head()

3) Extract the columns needed
3a) new_world_happiness_df= world_happiness_df[['Overall rank','Country or region','Score']].copy()
new_world_happiness_df.head(156)
3b) new_world_pop_df= worldPop_df[['Country Name','2019']].copy()
new_world_pop_df.head()

                                                                    2) Transform
2) Rename columns

2a) new_world_happiness_df= world_happiness_df[['Overall rank','Country or region','Score']].copy()
new_world_happiness_df.head(156)
2b) new_world_pop_df= worldPop_df[['Country Name','2019']].copy()
new_world_pop_df.head()
2c) new_world_happiness_df = new_world_happiness_df.rename(columns = {'Overall rank': 'overall_rank', 'Country or region': 'country_name', 'Score': 'score'})
new_world_happiness_df.head()
2d) new_world_pop_df = new_world_pop_df.rename(columns = {'Country Name': 'country_name', '2019': '2019_population'})
new_world_pop_df.head()

3) Save extracted and transformed data to CSV
3a) new_world_happiness_df.to_csv('world_happiness.csv')
3b) new_world_pop_df.to_csv('world_population.csv')

4) Create ERD at app.quickdatabasediagrams.com




								5) Load

5a) Create tables from csv files "world_happiness" and "world_population".

5b) CREATE TABLE "happiness" (
    "overall_rank" INT   NOT NULL,
    "country_name" VARCHAR(30)   NOT NULL,
    "score" numeric NOT NULL
);

5c) CREATE TABLE "population" (
    "country_name" VARCHAR(100)   NOT NULL,
    "2019_population" numeric NULL
);

5d) visualize each table

5e) select * from happiness
5f) select * from population

5g) join the two tables together, round the score to two decimal places, and order by the overall happiness rank.

5h) select happiness.country_name, happiness.overall_rank, round(happiness.score,2) as score, population."2019_population"
from happiness
left join population
on population.country_name = happiness.country_name
order by happiness.overall_rank

5i) Loaded transformed tables to PgAdmin 4
