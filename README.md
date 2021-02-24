# MI-for-Discovery-and-Innovation

## Code
*[ai_rc_growth_queries](https://github.com/georgetown-cset/MI-for-Discovery-and-Innovation/blob/main/ai_rc_growth_queries.sql) contains the SQL code for the data analysis, including the queries that generate [AI_for_Scientific_Discovery_20%growth.csv](https://github.com/georgetown-cset/MI-for-Discovery-and-Innovation/blob/main/AI%20for%20Scientific%20Discovery_20%25growth.csv) and [AI_for_Scientific_Discovery_100%growth.csv](https://github.com/georgetown-cset/MI-for-Discovery-and-Innovation/blob/main/AI%20for%20Scientific%20Discovery_100%25growth.csv)

## Files 
Both .csv files list the research clusters that are represented in aggregation in "Machine Intelligence for Scientific Discovery and Engineering Invention". 
Each file has seven columns:
*<em>Cluster_Id</em>: the unique research cluster id
*<em>Number_of_Papers</em>: the number of papers in the unique research cluster
*<em>Citations_per_Paper</em>: the average citations per paper for the papers in the unique research cluster
*<em>Percent_AI</em>: the percent of papers in the unique research cluster that are labeled as AI
*<em>Level0_MAG</em>: the dominant Level 0 field of study MAG classification for the unique research cluster
*<em>Avg_3yr_Growth</em>: the average annual growth of papers in the unique research cluster
*<em>Dominant_Country</em>: the country with the most papers in the unique research cluster (country is assigned based on author organization country)

[AI_for_Scientific_Discovery_20%growth.csv](https://github.com/georgetown-cset/MI-for-Discovery-and-Innovation/blob/main/AI%20for%20Scientific%20Discovery_20%25growth.csv) contains the research clusters that are not labeled as Computer Science with 20% or more average 3-year growth with 10% or more AI papers and [AI_for_Scientific_Discovery_100%growth.csv](https://github.com/georgetown-cset/MI-for-Discovery-and-Innovation/blob/main/AI%20for%20Scientific%20Discovery_100%25growth.csv) contains the research clusters that are not labeled as Computer Science with 100% or more average 3-year growth with 10% or more AI papers.
