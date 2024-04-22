library(ggplot2)
library(dplyr)
library(tidyverse)

df <- read.csv("train.csv", stringsAsFactors = FALSE)

chart3 <- df %>% arrange(Age) %>% group_by(Class) 

customer_score <- chart3 %>%
  group_by(Class) %>%
  count(satisfaction) %>% 
  mutate()

