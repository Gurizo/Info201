library(tidyverse)
library(dplyr)

df_chart2 <- read.csv("train.csv", stringsAsFactors = FALSE)

inflight_service <- df_chart2 %>%
  select(Inflight.wifi.service, Food.and.drink, Inflight.entertainment, satisfaction) %>% 
  pivot_longer(cols = c(Inflight.wifi.service, Food.and.drink, Inflight.entertainment),
               names_to = "service",
               values_to = "score") %>%
  mutate()

sum_score <- inflight_service %>%
  group_by(satisfaction, score, service) %>%
  count(score)%>% 
  mutate()
