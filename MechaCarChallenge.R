#Deliverable 1: Linear Regression to Predict MPG
#Step 3: load packages
library(dplyr)
library(tidyverse)
#Step 4: Import the csv
mechacar_mpg <- read.csv(file = 'Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(Car_Data)
#Step 5: Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)
#Step 6: Use the summary function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg))