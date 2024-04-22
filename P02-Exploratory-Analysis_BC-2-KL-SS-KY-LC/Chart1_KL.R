airline_df <- read.csv("https://raw.githubusercontent.com/info-201b-sp23/P02-Exploratory-Analysis_BC-2-KL-SS-KY-LC/main/archive/train.csv?token=GHSAT0AAAAAACBSOKR3NRW426SCJYPK5GT6ZDFXLKA")

library(ggplot2)
library("dplyr")

satis_grouped <- airline_df %>% group_by(satisfaction) %>% filter(satisfaction == "satisfied")

ggplot(data = satis_grouped, aes(x = Flight.Distance, y = )) 
  
