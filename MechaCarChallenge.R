######################  Deliverable 1: Linear Regression to Predict #################### 

#Use the library() function to load the dplyr package.
library(dbplyr)

#current directory
getwd()  

#Import and read in the MechaCar_mpg.csv file as a dataframe.
data <- read.csv( file = 'MechaCar_mpg.csv',check.names = F, stringsAsFactors = F, header = T, sep = ",")

#Perform linear regression
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = data)

#Determine the p-value and the r-squared value for the linear regression model
summary( lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = data))


######################## Deliverable 2: Create Visualizations ##############################

library(dplyr)

#import and read
data_2 <- read.csv( file = 'Suspension_Coil.csv',check.names = F, stringsAsFactors = F, header = T, sep = ",")

#get the mean, median, variance, and standard deviation
total_summary <- data_2 %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SDI = sd(PSI), .groups = 'keep')


#group each manufacturing lot by the mean, median, variance, and standard deviation of PSI column.
lot_summary <- data_2 %>% group_by(Manufacturing_Lot) %>%  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SDI = sd(PSI), .groups = 'keep')


######################## Deliverable 3: T-Tests ###########################################

#determine if the PSI across all manufacturing lots is statistically different from the population mean 1,500 pounds per square inch.
t.test(data_2$PSI,mu=1500)

# t-test lot 1
t.test(subset(data_2$PSI,data_2$Manufacturing_Lot == "Lot1"),mu=1500)

# t-test lot 2
t.test(subset(data_2$PSI,data_2$Manufacturing_Lot == "Lot2"),mu=1500)

# t-test lot 3
t.test(subset(data_2$PSI,data_2$Manufacturing_Lot == "Lot3"),mu=1500)






