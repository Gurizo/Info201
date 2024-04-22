# Load the National Park data from the following URL
# https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/1979-2020-National-Park-Visits-By-State.csv
# Save as np_data
np_data <- read.csv("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/1979-2020-National-Park-Visits-By-State.csv")

# Find the average number of visits for each National Park
# Save as avg_park_visits and View()
# What park has the most and least average visits?
# What patterns or surprises do you notice?
avg_state_visits <- np_data %>% 
  group_by(State) %>% 
  summarize(avg_visits = mean(RecreationVisits))
View(avg_state_visits)
max(avg_state_visits$avg_visits)
# TN
min(avg_state_visits$avg_visits)
# AS

# Find the average number of visits for each state
# Save as avg_state_visits and View()
# What state has the most and least average visits?
# What patterns or surprises do you notice?
avg_state_visits <- np_data %>% 
  group_by(State) %>% 
  summarize(avg_visits = mean(RecreationVisits))
View(avg_state_visits)
# The number of visits for each state differ a lot depending on the states.

# Find the average number of visits for each National Park AND state (group by two columns!)
# Save as avg_park__state_visits and View()
# What National Park has the most and least average visits?
# What patterns or surprises do you notice?
avg_park_visits <- np_data %>% 
  group_by(ParkName, State) %>% 
  summarize(avg_visits = mean(RecreationVisits))
View(avg_park_visits)
# The number of visits for each park differ a lot depending on the park

# Find the number of distinct parks for each state
# Save as distinct_parks
# Which state has the most national parks?
# What patterns or surprises do you notice?
distinct_parks <- np_data %>% 
  group_by(State) %>% 
  summarize(distinct_parks = n_distinct(ParkName))
View(distinct_parks)
# There are not a lot of distinct park for each states.