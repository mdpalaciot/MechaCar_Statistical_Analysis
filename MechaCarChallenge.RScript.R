# DELIVERABLE 1
# Import dplyr package
library(dplyr)

# Import and read mpg csv as a dataframe
mechaCarDF <- read.csv("data/MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)

# Use the lm() to pass in all 6 variables and add the DF as the parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCarDF)

# Use the summary function to determine the p-value and r-squared value for linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCarDF))


# DELIVERABLE 2
# Import and read suspension coil csv as a table
mechaCarSusCoilDF <- read.csv("data/Suspension_Coil.csv", check.names=F, stringsAsFactors = F)

# Create total_summary dataframe using summarize() to get mean, median, variance, and std dev of PSI
total_summary <- mechaCarSusCoilDF %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),StdDev=sd(PSI))

# Create lot_summary dataframe using group_by() and summarize() for each lot for mean, median, variance and std dev of PSI
lot_summary <- mechaCarSusCoilDF %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),StdDev=sd(PSI))

#Deliverable 3 
#perform t-test to determine if the PSI across 
# Peform t-test across all Lots
t.test(Suspension$PSI,mu = 1500)
# Peform t-test on Lot 1
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# Peform t-test on Lot 2
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# Peform t-test on Lot 3
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

