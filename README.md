# MechaCar_Statistical_Analysis
  Challenge 15

## Linear Regression to Predict MPG
Looking at the results below, vehicle length and ground clearance have a significant level of variance in the model. Both have p-values of less than 0.05%, suggesting they have a significant impact on the mpg of the prototype car. Vehicle weight, spoiler angle, and AWD do not have a significant relationship and indicate a random amount of variance.

The slope of the linear regression is not zero. It has a p-value of 5.08e-08 and is therefore signifcant; indicating a relationship (a slope) and therefore, not a slope of zero (no relationship).

This model does predict mpg of the prototype effectively. There is an R-Squared value of 0.7149 and an adjusted R-Square of 0.6825, suggesting over 70% of the variance in the data is correlated to the independent variables. An effective model. 

![Deliverable1_2](https://user-images.githubusercontent.com/96352625/163754789-b05bbc63-87ce-445d-af35-072c05881e42.png)

## Summary Statistics on Suspension Coils
The design specifications of for the prototype suspension coils mandates the variance does not exceed 100 psi. Looking at the total sumary table below, the variance of the population is 62.29 psi, well below the standard. But looking at the summary by lot, there a different results. Lot 1 and lot 2 are well below the standard (0.9795 and 7.4693 respectively) but lot 3 has a psi variance of 170. Suggesting lot 3 is bringing the total population variance up and the other 2 lots are well below the standard; lot 3 accounting for most of the variance. 

Total Summary

![total_summary](https://user-images.githubusercontent.com/96352625/163754810-a2f1f3bb-62b8-4a92-aa7f-2516a4d77008.png)

Lot Summary

![lot_summary](https://user-images.githubusercontent.com/96352625/163754824-c84230bb-cd38-4f94-b8d9-f6a4eb29d98f.png)

## t-Tests on Suspension Coils
The one sample t-test has a mean of 1498.78 and a p-value of 0.06028; not significant to reject the null hypothesis. Therefore, the mean of all 3 lots is statistically similiar to the population mean of 1500. 

![t test_function](https://user-images.githubusercontent.com/96352625/163757471-9d464839-35f9-47eb-b2c9-d34a8a34d177.png)

First, looking only at lot 1; there is a sample mean of 1500 and therefore a p-value of 1. There is no significance between the lot sample and the population mean; therefore, the null hypothesis can not be rejected. 

![lot1](https://user-images.githubusercontent.com/96352625/163757485-5f795c2f-9f51-4dfe-bff6-e5fc595f96bc.png)

Second, looking at lot 2; the results are similar to lot 1. There is a sample mean of 1500.02 and a p-value of 0.61. Not small enough to reject the null as they are statistically similar.

![lot2](https://user-images.githubusercontent.com/96352625/163757494-a90a5016-7ccb-4e2e-8513-e679f54e3e06.png)

Finally, lot 3 offers different results than the first 2 lots. A mean of 1496.14 and a p-value of 0.04; there is enough significance to reject the null hypothesis. This comes at no surprise because of the variance results discussed previously; lot 3 had significantly more variance than lots 1 and 2.

![lot3](https://user-images.githubusercontent.com/96352625/163757511-ee50ecc2-a52d-4e96-80d9-0bd5b7f993f2.png)


## Study Design: MechaCar vs Competition
How does the MechaCar peform against the competition? Using a few key metrics, we have crafted a design study to measure their success compared to vehicles of the same price.

Key Metrics:
* Safety Rating
* Vehicle Price
* Resale Value
* Annual Maintenance Costs
* Miles per Gallon (mpg)

Hypotheses
Null: Based on the key metrics, MechaCar performs similarily to competition at the same price.
Alternative: Based on key metrics, MechaCar performs better than the competition performed at the same price.

Statistical Test and Data
An ANOVA test would be best used to complete this analysis. Comparing the different car companies based on the same key metrics. Which car company performs better based on these metrics? Similar to what Consumer Reports does. First, find the average of these metrics across the whole population (all competition included) and then run a test to see if the average of MechaCar is significantly different than that average. Above average (positive) would indicate better performance and below average (negative) would indicate poorer performance. The data needed to complete this analysis would include the key metrics listed above for at least 3 years of data to have a more inclusive analysis. 
