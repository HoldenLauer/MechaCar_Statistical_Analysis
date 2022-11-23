# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![D1 Summary](https://user-images.githubusercontent.com/110861876/203462074-98b5b346-2814-4e58-a680-2b85cdca2d43.png)

Statistical Summary:
1. There are two variables/coefficients that provide a non-random amount of variance to the mpg values in the dataset and they are vehicle_length and ground_clearance.
2. With the p-Value for this model being 5.35e-11, it is smaller than the significance level of 0.05%, and because of that we can reject the null hypothesis indicating that the slope of this linear model to be not zero.
3. This linear model has an r-squared value of 0.7149, which makes approxiamtely 71% of all mpg predictions to be determined by this model. Therefore, this model does predict mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils
Total Summary: ![D2 total sum](https://user-images.githubusercontent.com/110861876/203465442-33034a62-7944-4025-a9a5-7df348789427.png)

Lot Summary: ![D2 lot sum](https://user-images.githubusercontent.com/110861876/203465465-0f13f1bf-083d-4522-b698-f2e6791c7f22.png)

Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

With the total summary of the production lot, the variance of the coils os 62.29 PSI, which is within the 100 PSI variance requirement.
Furthermore, when it comes to individual lots only lots 1 and 2 are witin the 100 PSI variance requirement with their variences being 0.98 and 7.47. However, lot 3 is above the varaince requirement at 170.29 which is largely changing the variance at the full lot level.

## T-Tests on Suspension Coils
T-test results for all manufacturing lots:

![D3 t test all lots](https://user-images.githubusercontent.com/110861876/203473738-915c4295-7cc0-4419-986a-74f827bdfe3d.png)

From the reults above we see that the p-Value is 0.06 which is just higher than the common significance level of 0.05, but there is not enough evidence to reject the null hypothesis. 

With the individual three lots we see the same similarities between the summary statistics and the t-tests by showing lot 1 and 2 to have a p-Value above 0.05 (1 and 0.61 respectively), but lot 3 has a p-Value of 0.04 which indicates we can reject the null hypothesis. Clearly lot 3 went through some production issues and should check for system failures and should inspect their suspension coils.

![D3 t test lot 1](https://user-images.githubusercontent.com/110861876/203474830-043ed31d-996f-420d-89ea-1d35a4aec0bd.png)
![D3 t test lot 2](https://user-images.githubusercontent.com/110861876/203474836-44f503f7-92b4-43e0-bb40-f603c0e80b8c.png)
![D3 t test lot 3](https://user-images.githubusercontent.com/110861876/203474843-2c4c60b4-420f-4f79-853f-b823df6a0157.png)

## Study Design: MechaCar vs Competition
This study is to test how MechaCar prototype competes with the competiition on metrics for MPG (fuel effciency) on comparable models.

Hypothesis:
- Null Hypothesis (Ho): The difference bewteen the MPG on comparable models for MechaCar and the competetor is equal to zero.
- Alternative Hypothesis (Ha): The difference bewteen the MPG on comparable models for MechaCar and the competetor is not equal to zero.

To test the hypothesis a multiple linear regression would be used to determine which comparable model has the best MPG between MechaCar and the competetor.
