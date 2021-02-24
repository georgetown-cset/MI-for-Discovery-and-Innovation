--count how many research clusters by level 0 MAG category where level 0 MAG category is not Computer Science
SELECT COUNT(cluster_id) as cluster_count, level0_mag FROM `gcp-cset-projects.science_map.dc5_stat_clust_proc_201021`
WHERE NOT level0_mag = "computer science" AND ai_pred >= 0.1 
GROUP BY level0_mag
ORDER BY cluster_count DESC

--count how many research clusters by level 0 MAG category where level 0 MAG category is not Computer Science and 3yr average growth is greater than or equal to 20%
SELECT COUNT(cluster_id) as cluster_count, level0_mag FROM `gcp-cset-projects.science_map.dc5_stat_clust_proc_201021`
WHERE NOT level0_mag = "computer science" AND ai_pred >= 0.1 AND growth_3yr >= 0.2
GROUP BY level0_mag
ORDER BY cluster_count DESC

--count how many research clusters by level 0 MAG category where level 0 MAG category is not Computer Science and 3yr average growth is greater than or equal to 100%
SELECT COUNT(cluster_id) as cluster_count, level0_mag FROM `gcp-cset-projects.science_map.dc5_stat_clust_proc_201021`
WHERE NOT level0_mag = "computer science" AND ai_pred >= 0.1 AND growth_3yr >= 1
GROUP BY level0_mag
ORDER BY cluster_count DESC
