# Load packages
library(tidyverse)
library(ggplot2)
library(plotly)

source("Chart1_KL.R")
source("Chart2_KY.R")
source("Chart3_SL.R")

# Load data
df <- read.csv("train.csv", stringsAsFactors = FALSE)

server <- function(input, output) {
  # intro
  
  # viz 1
  output$flight_dist_chart <- renderPlotly ({
    
    selected_df <- subset(flight3_df, Flight.Distance >= input$Flight.Distance[1]  & Flight.Distance <= input$Flight.Distance[2])
    
    flight_dist_chart <- ggplot(data = selected_df) + 
      geom_point(aes(x = Flight.Distance, y = s_percent), color = "blue") +
      scale_x_continuous(limits = c(input$Flight.Distance[1], input$Flight.Distance[2]), breaks = seq(0, 4000, 500)) +
      scale_y_continuous(limits = c(0, 1)) +
      
      labs(title = "Influence of Flight Distance on Passenger Satisfaction", 
           x = "Flight Distance",
           y = "Percentage of Passengers Satisfied")
    
    return(ggplotly(flight_dist_chart))
  })
  
  # viz 2
  output$chart2 <- renderPlotly({
    
    
    filtered_df_chart2 <- sum_score %>% 
      filter(satisfaction %in% input$satisfaction_selection, service %in% input$service_selection)
    
    chart_2_plot <- ggplot(data = filtered_df_chart2)+
      geom_bar(aes(x  = score, y = n, fill = service), stat = "identity", position = "dodge", width = 0.3)+
      facet_grid(~ satisfaction)+
      scale_fill_brewer(palette = "Paired")+
      scale_x_continuous(breaks = seq(0, 5, 1))+
      labs(title = "Influence of Inflight Services on Passenger Satisfaction", x = "Level of Satisfaction",
           y = "Number of People", fill = "Inflight Service")
    
    chart_2_plotly <- ggplotly(chart_2_plot)
    return(chart_2_plotly)
    
  })
  
  # viz 3
  output$chart3 <- renderPlotly({
    filtered_df_chart3 <- chart3 %>% filter(Class %in% input$class_type) %>% 
      filter(Age >= input$passenger_age[1]  & Age <= input$passenger_age[2])
    
    final_chart3 <- filtered_df_chart3 %>% group_by(Age) %>% count(satisfaction) %>% mutate()
    
    chart_3_plot <- ggplot(final_chart3) +
      geom_col(aes(x = Age, y = n, fill = satisfaction)) +
      facet_grid(~ satisfaction) + 
      scale_x_continuous(c(~Age >= input$passenger_age[1]  & ~Age >= input$passenger_age[2])) +
      scale_fill_manual(values = c("satisfied" = "green", "neutral or dissatisfied" = "red")) +
      labs(title = "Passenger satisfaction in terms of age and flight class",
           x = "Age", y = "Number of Passengers")
    
    chart_3_plotly <- ggplotly(chart_3_plot)
    return(chart_3_plotly)
    
  })
  
  # conclusion
}

#scale_fill_manual(values = c("satisfied" = "green", "neutral or dissatisfied" = "red")) +