# ETL_ENK_PROJECT
ETL Project for Biz
                                                                    1)  Extract

1a) Found https://www.kaggle.com/unsdsn/world-happiness (World Happiness Report)
1b) Found https://data.worldbank.org/indicator/SP.POP.TOTL (World Population Report)

2) Then read csv in Pandas, made dataframe
2a) World Happiness Report
world_happiness_df = pd.read_csv(csv_file)
world_happiness_df.head()
2b) Population Report 
csv_file2 = "world_1.csv"
worldPop_df = pd.read_csv(csv_file2,encoding='latin1')
worldPop_df.head()

                                                                    2) Transform
2)Move only Colums needed

2a)new_world_happiness_df= world_happiness_df[['Overall rank','Country or region','Score']].copy()
new_world_happiness_df.head(156)
2b)new_world_pop_df= worldPop_df[['Country Name','2019']].copy()
new_world_pop_df.head()


