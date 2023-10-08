### Assignment 5 ###


# Loading packages
library(tidyverse) 


### Problem 2 ----
# Saving data in a new dataframe
df <- readLines("suites_dw_Table1.txt")

# Saving variable descriptions in a new data frame
variable_descriptions <- df[1:11] 

# Saving variable descriptions in a new txt file
variable_descriptions %>% cat(file = "Variable_descriptions.txt", sep = "\n")

# Removing row 1 to 12, and 14
df <- df[-c(1:12, 14)]

# Saving dataframe as .csv
df %>% cat(file = "Galaxies.csv", sep = "\n")

# Reading .csv
read_csv("Galaxies.csv")


### Problem 3 ----


