#Deliverable 1: Linear Regression to Predict MPG
#Step 3: load packages
library(dplyr)
library(tidyverse)
#Step 4: Import the csv
mechacar_mpg <- read.csv(file = 'Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(mechacar_mpg)
#Step 5: Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)
#Step 6: Use the summary function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg))

#Deliverable 2: Create Visualizations for the Trip Analysis
#Step 2: Import the suspension_coil.csv
mechacar_suspension <- read.csv(file = 'Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(mechacar_suspension)
#Step 3: Write an RScript that creates a total_summary df using the summarize() function
total_summary <- mechacar_suspension %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 
#Step 4: Write in RScript that creates a lot_summary df using the group.by() and summarize() function
lot_summary <- mechacar_suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep')

#Deliverable 3: T-Tests on Suspension Coils
#Step 1: In your MechaCarChallenge.RScript, write an RScript using the t.test() function
t.test(mechacar_suspension$PSI,mu=1500)
#Step 2: Write three more RScripts using the t.test() function and its subset() argument
lot1 <- subset(mechacar_suspension, Manufacturing_Lot=="Lot1")
lot2 <- subset(mechacar_suspension, Manufacturing_Lot=="Lot2")
lot3 <- subset(mechacar_suspension, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

#Step 1: In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots