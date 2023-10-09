### Assignment 5 ###


# Loading packages
library(tidyverse) 
library(ggplot2)


### Problem 2 ----
# Storing the data
raw_data <- readLines("suites_dw_Table1.txt")

# Storing variable descriptions as a new value
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

# Creating plot
galaxies %>% ggplot() + 
  # Scatterplot
  geom_point(aes(x = log_m26, y = a_26)) + 
  # Emphasizes the representation of smaller galaxies
  scale_x_continuous(limits = c(0, NA))

# We know that log_m26 is an indicator of mass. This plot reveals that there
# are no galaxies in the data set with a log_m26 value of less then 5.



