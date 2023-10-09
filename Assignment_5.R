### Assignment 5 ###


# Loading packages
library(tidyverse) 
library(ggplot2)


### Problem 2 ----
# Storing the data
raw_data <- readLines("suites_dw_Table1.txt")

# Saving variable descriptions as a new value
variable_descriptions <- raw_data[1:11] 

# Saving variable descriptions in a new txt file
variable_descriptions %>% cat(file = "Variable_descriptions.txt", sep = "\n")

# Removing row 1 to 12, and 14
raw_data <- raw_data[-c(1:12, 14)]

# Saving data as Galaxies.csv
raw_data %>% cat(file = "Galaxies.csv", sep = "\n")


### Problem 3 ----
## Reading .csv and storing it as a df
galaxies <- read.csv("Galaxies.csv", sep = "|", header = TRUE)




