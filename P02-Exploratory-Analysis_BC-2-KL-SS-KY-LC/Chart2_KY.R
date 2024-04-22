library(ggplot2)
library(dplyr)
library(tidyverse)

df <- read.csv("archive/train.csv", stringsAsFactors = FALSE)

inflight_service <- df %>%
  select(Inflight.wifi.service, Food.and.drink, Inflight.entertainment, satisfaction) %>% 
  pivot_longer(cols = c(Inflight.wifi.service, Food.and.drink, Inflight.entertainment),
               names_to = "service",
               values_to = "score") %>%
  mutate()

sum_score <- inflight_service %>%
  group_by(satisfaction, score, service) %>%
  count(score)%>% 
  mutate()



second_chart <- ggplot(data = sum_score) +
  geom_bar(aes(x  = score, y = n, fill = service), stat = "identity", position = "dodge", width = 0.5)+
           facet_grid(~ satisfaction)+
  scale_fill_brewer(palette = "Set2")+
  scale_x_continuous(breaks = seq(0, 5, 1))+
  labs(title = "Influence of Inflight Services on Passenger Satisfaction", x = "Level of Satisfaction",
       y = "Number of People", fill = "Inflight Service")