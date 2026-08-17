The original dataset was left unchanged. All transformations were performed on the `accidents\_clean` table.



#### Empty fields in the ‘on\_street\_name’ column



The on\_street\_name column contained missing values. These were not filled in because it was not possible to reliably determine the street name. The street analysis included only records with a non-empty on\_street\_name value, which helped avoid creating an artificial “Unknown” category.





### REQ1 - Compare the percentage of the total number of accidents by month. Do you notice any seasonal patterns?



#### SQL

The analysis was performer using the 'vw\_monthly\_accidents' view.



#### Visualisation

!\[Monthly Accidents](images/req1\_monthly\_accidents.png)



#### Findings

* The data file only contains data up to August. Because the dataset is incomplete, it impacts the analysis result.
* April recorded the lowest percentage of accidents.
* The number of accidents increased again during the summer months.
* The monthly distribution suggests a seasonal pattern, likely influenced by changes in traffic volume, however the data covers an 8-month period (January-August 2020), which makes it impossible to fully analyze seasonality. For example winter conditions can increase the risk of collisons and based on the available data, the number of accidents during this period (January-March) is the highest, but without data from the period from September to December is not possible to draw conclusions about the full seasonal pattern.



### REQ2 - Determine the frequency of accidents by day of the week and time of day. Based on this data, when do accidents occur most frequently?



#### SQL

The analysis was performer using the 'vw\_accidents\_by\_day\_hour', 'vw\_accidents\_by\_day', 'vw\_accidents\_by\_hour\_of\_day' views.



#### Visualisation

!\[Monthly Accidents](images/req2\_accidents\_by\_day\_hour.png)



#### Findings

* The most accidents occurred between 2 p.m. and 4 p.m. One possible explanation could be increased traffic volumne associated with people returning home from work in the afternoon; however, the dataset does not contain information on traffic volume or behavioural variables, and therefore the analysis only allows us to identify patterns rather than determine the underlying causes.





### REQ3 - On which specific street were the most accidents reported? What percentage of all reported accidents does this represent?



#### SQL

The analysis was performer using the 'vw\_top\_10\_accident\_street' view.



#### Visualisation

!\[Monthly Accidents](images/req3\_accidents\_by\_street.png)



#### Findings

* Belt Parkway recorded the highest number of accidents, accounting for 1.66 % of all accidents in the dataset. However, even the most accident-prone street represents only a small fraction of total acidents, suggesting that collisions are distributed across many locations in New York City.









### REQ4 - What was the most common contributing factor to accidents in this sample (based on vehicle 1)? And what about fatal accidents?



#### SQL

The analysis was performer using the 'vw\_contributing\_factors' and 'vw\_fatal\_contributing\_fatal\_factors' views.



#### Visualisation

!\[Monthly Accidents](images/req4\_contributing\_factors.png)



#### Findings

* While Driver Inattention/Distraction was the most common contributing factor across all accidents, fatal accidents were most associated with unsafe speed. This suggest that speeding may play a particularly important role in the most severe collisions.

