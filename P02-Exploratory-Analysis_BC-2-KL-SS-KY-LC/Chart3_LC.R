library(ggplot2)
library(dplyr)
library(tidyverse)

df <- read.csv("https://raw.githubusercontent.com/info-201b-sp23/P02-Exploratory-Analysis_BC-2-KL-SS-KY-LC/main/archive/train.csv?token=GHSAT0AAAAAACBS7AEHATH2I4INUPHKGZXCZDFBUIA", stringsAsFactors = FALSE)

summary(df)
filtered_data <- df[, c("Gender", "Age", "Type.of.Travel", "satisfaction")]
summary(filtered_data)

# Distribution of gender bar chart
gender_counts <- table(df$Gender)

bar_chart <- ggplot(data = data.frame(Gender = names(gender_counts), Count = as.vector(gender_counts)), aes(x = Gender, y = Count, fill = Gender)) +
  geom_bar(stat = "identity") +
  labs(title = "Distribution of Gender", x = "Gender", y = "Count") +
  theme_minimal()

print(bar_chart)


# Boxplot of type of travel and age.
boxplot <- ggplot(df, aes(x = Type.of.Travel, y = Age, fill = Type.of.Travel)) +
  geom_boxplot() +
  labs(title = "Age Distribution by Type of Travel", x = "Type of Travel", y = "Age") +
  theme_minimal()

print(boxplot)


# Stacked bar chart of Type of travel and satisfaction.
summary_data <- df %>%
  group_by(Type.of.Travel, satisfaction) %>%
  summarize(Count = n())

stacked_bar_chart <- ggplot(summary_data, aes(x = Type.of.Travel, y = Count, fill = satisfaction)) +
  geom_bar(stat = "identity") +
  labs(title = "Type of Travel vs. Satisfaction", x = "Type of Travel", y = "Count") +
  scale_fill_manual(values = c("satisfied" = "green", "neutral or dissatisfied" = "red")) +
  theme_minimal()

print(stacked_bar_chart)