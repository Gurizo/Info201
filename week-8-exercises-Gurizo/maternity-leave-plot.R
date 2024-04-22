# Visualizing Length of Paid Maternity Leave Throughout the World

# Install libraries
install.packages("plotly")

# Load libraries
library("dplyr")
library("ggplot")
library("plotly")

# Load data
# https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/maternity-leave-2021.csv
# Original data from The World Bank
# https://genderdata.worldbank.org/indicators/sh-leve/?view=bar
maternity_df <- read.csv("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/maternity-leave-2021.csv", stringsAsFactors = FALSE)

# Exercise 1: Filter for the United States, Bulgaria, and Italy
selected_df <- maternity_df %>% 
  filter(Country.Name %in% c("United States", "Bulgaria", "Italy"))

# Exercise 2: Make a bar plot of countries on the y axis and number of days paid maternity leave on the x axis
maternity_plot <- ggplot(selected_df) +
  geom_col(aes(x = Value,
               # Order from most to least
               y = reorder(Country.Name, +Value),
               fill = Country.Name,
               text = paste("Country:", Country.Name)))

# Exercise 3: Make the plot interactive
ggplotly(maternity_plot, tooltip = "text")
