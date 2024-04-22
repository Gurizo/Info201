## Pivot Longer Demo
# Transform multiple columns/categories into a single column 

# Load ggplot and tidyverse
library(ggplot2)
library("tidyverse")

climate_df <- read.csv("https://raw.githubusercontent.com/owid/co2-data/master/owid-co2-data.csv", stringsAsFactors = FALSE)

# Select columns
selected_df <- climate_df %>% 
  select(country, year, cement_co2, coal_co2, oil_co2)

# Pivot
pivot_df <- selected_df %>% 
  pivot_longer(!c(year, country), # Columns to ignore
               names_to = "climate_category",
               values_to = "amount")

summary(climate_df)
summary(pivot_df)
View(pivot_df)
