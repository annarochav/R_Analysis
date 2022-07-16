# :oncoming_automobile: R_Analysis :oncoming_automobile:

Challenge Week15 Data Analysis BootCamp using R and RStudio.

## ⚡Linear Regression to Predict MPG:

### **Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

Regularly, a 95% level of confidence is expected, the p-value needs to be compared to alpha = .05 level of significance so we can say that it is statistically significant. In this case the results were:

Vehicle length (p-value 2.60e-12) and ground clearance (p-value 5.21e-8) variables represent non-random amount of variance applied to the mpg values.

Vehicle weight, spoiler angle and AWD have p-Values that represent a random amount of variance with the dataset.

<img src="https://github.com/annarochav/R_Analysis/blob/main/Resources/1_results.png" width="800" height="" />

### **Is the slope of the linear model considered to be zero? Why or why not?**
It can’t be zero because the p-value is 5.35e-11 and this means that it is much smaller than a significance level of 0.05%, so the null hypothesis must be rejected according to the statistical summary results.

### **Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
Yes, this linear model has an r-squared value of 0.7149, which means that 71% of all mpg predictions will be correct.

## ⚡Summary Statistics on Suspension Coils:

### **The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

<img src="https://github.com/annarochav/R_Analysis/blob/main/Resources/2_results.png" width="300" height="" />
<img src="https://github.com/annarochav/R_Analysis/blob/main/Resources/3_results.png" width="400" height="" />

The variance for the total lot is 62.30 and it is under 100 pounds PSI which is expected in the design specifications. Lot 1 (0.98) and Lot 2 (7.47) are well within the 100 pounds PSI. The problem is with Lot 3 (170.3) that has a variance of over 100 pounds PSI causing the variance at the full lot level.

## ⚡T-Tests on Suspension Coils:

Results from the t-test to show that the true mean sample is 1498.78 and the p-value is 0.06028 which is low but not enough to reject the null hypothesis. It did not fall below the significance level of 0.05, so normality can be assumed.

<img src="https://github.com/annarochav/R_Analysis/blob/main/Resources/4_results.png" width="430" height="" />
<img src="https://github.com/annarochav/R_Analysis/blob/main/Resources/5_results.png" width="500" height="" />

The results for Lot 2 show that the true mean sample 1500.2 and the p-value is 0.6072 which is low but not enough to reject the null hypothesis. It did not fall below the significance level of 0.05, so normality can be assumed.

<img src="https://github.com/annarochav/R_Analysis/blob/main/Resources/6_results.png" width="500" height="" />

The results for Lot 3 show that the true mean sample 1496.14 and the p-value is 0.04168 which is low enough to reject the null hypothesis. This lot may need to be evaluated because is slightly different from the population mean.

<img src="https://github.com/annarochav/R_Analysis/blob/main/Resources/7_results.png" width="500" height="" />

## ⚡Study Design: MechaCar vs Competition

### **What metric or metrics are you going to test?**

More metrics would be of interest to the customers, so we can compare safety rating, city and highway efficiency and current selling price.

### **What is the null hypothesis or alternative hypothesis?**

**Null Hypothesis (Ho):** MechaCar average price compared to the efficiency and safety rating is statistically similar to competitor's vehicles.
**Alternative Hypothesis (Ha):** MechaCar average price compared to the efficiency and safety rating is statistically above or below to competitor's vehicles.

### **What statistical test would you use to test the hypothesis? And why?**

A multiple linear regression can be used because we want to know how strong the relationship is between two or more independent variables (efficiency and safety rating) and one dependent variable (selling price). 

### **What data is needed to run the statistical test?**

Random samples for MechaCar and the competition, that include safety rating, city and highway efficiency and current selling price.






