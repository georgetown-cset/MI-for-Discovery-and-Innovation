# MI-for-Discovery-and-Innovation

## Research Cluster Details

We apply the Leiden algorithm, an iterative clustering algorithm that guarantees well-connectedness, to infer RCs as described by Klavans et al<sup>1</sup>. In our RC model, we use a merged scholarly literature dataset containing Dimensions, Microsoft Academic Graph, CNKI, and Web of Science; this merged dataset accounts for roughly 90% of the world's scientific literature. Our RC model contains 224,000 RCs with an average cluster size of 468 papers. 

We identify these RCs by selecting clusters that have at least 10% AI-related papers and are not within the primary domain of computer science; these correspond to cross-disciplinary RCs that are implementing a noteworthy amount of AI methods. AI-related papers are classified using a SciBERT model trained on arXiv publications, where publications with a cs.AI, cs.LG, cs.MA, or stat.ML author-assigned label were classified as AI (see Dunham et al.<sup>2</sup> for full details). For growth, Klavans et al.<sup>1</sup> define exceptional RC growth as 8 percent or higher annualized growth over 3 years. In this work, we are interested in RCs that exhibit rapid growth above the 8 percent exceptional growth threshold. We use the average percent of cluster growth from the past three years (2017-2020) to identify clusters that are rapidly growing (three-year average of annual growth of at least 20 percent) and clusters that exhibit doubling growth (three-year average of annual growth of at least 100 percent). 

1. Klavans R., Boyack K.W., Murdick D.A. (2020) A novel approach to predicting exceptional growth in research. PLoS ONE 15(9): e0239177. [https://doi.org/10.1371/journal.pone.0239177](https://doi.org/10.1371/journal.pone.0239177)
2. Dunham, J., Melot, J., & Murdick, D. (2020). Identifying the Development and Application of Artificial Intelligence in Scientific Text. [arXiv preprint arXiv:2002.07143](https://arxiv.org/abs/2002.07143).



## Code
* [ai_rc_growth_queries](https://github.com/georgetown-cset/MI-for-Discovery-and-Innovation/blob/main/ai_rc_growth_queries.sql) contains the SQL code for the data analysis, including the queries that generate [AI_for_Scientific_Discovery_20%growth.csv](https://github.com/georgetown-cset/MI-for-Discovery-and-Innovation/blob/main/AI%20for%20Scientific%20Discovery_20%25growth.csv) and [AI_for_Scientific_Discovery_100%growth.csv](https://github.com/georgetown-cset/MI-for-Discovery-and-Innovation/blob/main/AI%20for%20Scientific%20Discovery_100%25growth.csv)

## Files 
Both .csv files list the research clusters that are represented in aggregation in "Machine Intelligence for Scientific Discovery and Engineering Invention". 
Each file has seven columns:
* <em>Cluster_Id</em>: the unique research cluster id
* <em>Number_of_Papers</em>: the number of papers in the unique research cluster
* <em>Citations_per_Paper</em>: the average citations per paper for the papers in the unique research cluster
* <em>Percent_AI</em>: the percent of papers in the unique research cluster that are labeled as AI
* <em>Level0_MAG</em>: the dominant Level 0 field of study MAG classification for the unique research cluster
* <em>Avg_3yr_Growth</em>: the average annual growth of papers in the unique research cluster
* <em>Dominant_Country</em>: the country with the most papers in the unique research cluster (country is assigned based on author organization country)

[AI_for_Scientific_Discovery_20%growth.csv](https://github.com/georgetown-cset/MI-for-Discovery-and-Innovation/blob/main/AI%20for%20Scientific%20Discovery_20%25growth.csv) contains the research clusters that are not labeled as Computer Science with 20% or more average 3-year growth with 10% or more AI papers and [AI_for_Scientific_Discovery_100%growth.csv](https://github.com/georgetown-cset/MI-for-Discovery-and-Innovation/blob/main/AI%20for%20Scientific%20Discovery_100%25growth.csv) contains the research clusters that are not labeled as Computer Science with 100% or more average 3-year growth with 10% or more AI papers.
