library("dplyr")
library("stringr")
df <- read.csv("https://raw.githubusercontent.com/info-201b-sp23/P02-Exploratory-Analysis_BC-2-KL-SS-KY-LC/main/archive/train.csv?token=GHSAT0AAAAAACBS7AEHATH2I4INUPHKGZXCZDFBUIA")
summary_info <- list()
df$satisfaction_score[str_detect(df$satisfaction, "(?i)satisfied")] <- 1
df$satisfaction_score[str_detect(df$satisfaction, "(?i)neutral")] <- 0
gender_sat <- df %>% group_by(Gender) %>% summarise(avg_satisfaction = mean(satisfaction_score, na.rm = T))
summary_info$Gender_satisfaction <- gender_sat
age_sat <- df %>% group_by(Age) %>% summarise(avg_satisfaction = mean(satisfaction_score, na.rm = T))
high_low_age_sat <- age_sat %>% filter(avg_satisfaction == max(avg_satisfaction))
lowest_age_sat <- age_sat %>% filter(avg_satisfaction == min(avg_satisfaction))
high_low_age_sat <- high_low_age_sat %>% rows_insert(lowest_age_sat)
summary_info$Age_satisfaction <- high_low_age_sat
class_sat <- df %>% group_by(Class) %>% summarise(avg_sat = mean(satisfaction_score))
summary_info$Class_satisfaction <- class_sat
sat_0 <- df %>% filter(Flight.Distance < 1000) %>% summarise(avg_sat = mean(satisfaction_score))
sat_1000 <- df %>% filter(Flight.Distance < 2000 & Flight.Distance > 1000) %>% summarise(avg_sat = mean(satisfaction_score))
sat_2000 <- df %>% filter(Flight.Distance < 3000 & Flight.Distance > 2000) %>% summarise(avg_sat = mean(satisfaction_score))
sat_3000 <- df %>% filter(Flight.Distance < 4000 & Flight.Distance > 3000) %>% summarise(avg_sat = mean(satisfaction_score))
sat_4000 <- df %>% filter(Flight.Distance < 5000 & Flight.Distance > 4000) %>% summarise(avg_sat = mean(satisfaction_score))
avg_satisfaction = c(sat_0 %>% pull(avg_sat), sat_1000 %>% pull(avg_sat), sat_2000 %>% pull(avg_sat), sat_3000 %>% pull(avg_sat), sat_4000 %>% pull(avg_sat))
flight_distance = c("0-999", "1000-1999", "2000- 2999", "3000-3999", "4000-4999")
flight_dis_sat <- data.frame(flight_distance, avg_satisfaction)
summary_info$Flight_distance_satisfaction <- flight_dis_sat
customer_type_sat <- df %>% group_by(Customer.Type) %>% summarise(avg_sat = mean(satisfaction_score))
summary_info$Customer_type_satisfaction <- customer_type_sat
