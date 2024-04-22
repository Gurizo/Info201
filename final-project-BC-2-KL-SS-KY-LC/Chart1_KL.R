airline_df <- read.csv("train.csv", stringsAsFactors = FALSE)

library(ggplot2)
library("dplyr")

flight1_df <- airline_df %>% select(Flight.Distance, satisfaction) %>% group_by(Flight.Distance) %>% count(Flight.Distance) %>% filter(n > 10)
colnames(flight1_df)[2] = "num_flights"

flight2_df <- airline_df %>% select(Flight.Distance, satisfaction) %>% group_by(Flight.Distance) %>% filter(satisfaction == 'satisfied') %>% count(satisfaction)
colnames(flight2_df)[3] = "count_satis"
  
flight3_df = merge(flight1_df, flight2_df)
flight3_df <- flight3_df %>% mutate(s_percent = round((count_satis/num_flights) ,2 ))


flight_distance_chart <- ggplot(data = flight3_df) + 
  geom_point(aes(x = Flight.Distance, y = s_percent), color = "blue") +
  scale_x_continuous(limits=c(0,4000), breaks = seq(0, 4000, 500) ) + 
 labs(title = "Influence of Flight Distance on Passenger Satisfaction", 
      x = "Flight Distance",
      y = "Percentage of Passengers Satisfied")

convience_df <- airline_df %>% select(Departure.Arrival.time.convenient, satisfaction) %>% group_by(Departure.Arrival.time.convenient) %>% count(satisfaction) %>%  group_by(satisfaction)

convience_chart <- ggplot(data = convience_df) +
  geom_col(aes(x = Departure.Arrival.time.convenient, y = n, fill = satisfaction)) +
  facet_grid(~ satisfaction) + 
  scale_x_continuous(breaks = seq(0,5,1)) +
  scale_fill_manual(values = c("satisfied" = "green", "neutral or dissatisfied" = "red")) +
  labs(title = "Influence of Arrival & Departure time on Passenger Satisfaction",        
       x = "Passenger Ranking of Time",
       y = "Number of Passengers")
  



  
