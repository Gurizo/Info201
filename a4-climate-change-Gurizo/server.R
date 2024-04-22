library(plotly)
library(dplyr)
library(RColorBrewer)

data <- read.csv("http://raw.githubusercontent.com/owid/co2-data/master/owid-co2-data.csv")

server <- function(input, output) {
  
  output$co2Plot <- plotly::renderPlotly({
    filteredData <- data %>%
      dplyr::filter(country %in% c(input$country1, input$country2, input$country3),
                    year >= input$year_range[1], year <= input$year_range[2])
    
    plot <- plotly::plot_ly() %>%
      plotly::add_trace(data = filteredData %>% dplyr::filter(country == input$country1),
                        x = ~year, y = ~co2, type = "scatter", mode = "lines",
                        line = list(color = input$color1), name = input$country1) %>%
      plotly::add_trace(data = filteredData %>% dplyr::filter(country == input$country2),
                        x = ~year, y = ~co2, type = "scatter", mode = "lines",
                        line = list(color = input$color2), name = input$country2) %>%
      plotly::add_trace(data = filteredData %>% dplyr::filter(country == input$country3),
                        x = ~year, y = ~co2, type = "scatter", mode = "lines",
                        line = list(color = input$color3), name = input$country3) %>%
      plotly::layout(
        title = "CO2 Emissions Comparison",
        xaxis = list(title = "Year", range = c(input$yearRange[1], input$yearRange[2])),
        yaxis = list(title = "CO2 Emissions"),
        legend = list(title = "Country")
      )
    
    output$averageCO2 <- renderText({
      country_selected <- input$country
      average_co2 <- mean(data$co2[data$country == country_selected], na.rm = TRUE)
      paste("Average CO2 Emission for", country_selected, ":", round(average_co2, 2))
    })
    
    output$highestCO2 <- renderText({
      country_selected <- input$country
      country_data <- data %>%
        filter(country == country_selected)
      highest_co2 <- max(country_data$co2, na.rm = TRUE)
      year_highest_co2 <- country_data$year[which.max(country_data$co2)]
      paste("Highest CO2 Emission for", country_selected, ":", highest_co2, "in", year_highest_co2)
    })
    
    output$lowestCO2 <- renderText({
      country_selected <- input$country
      country_data <- data %>%
        filter(country == country_selected)
      lowest_co2 <- min(country_data$co2, na.rm = TRUE)
      year_lowest_co2 <- country_data$year[which.min(country_data$co2)]
      paste("Lowest CO2 Emission for", country_selected, ":", lowest_co2, "in", year_lowest_co2)
    })
    
    output$CO2Change <- renderText({
      country_selected <- input$country
      N <- 10
      latest_year <- max(data$year)
      earliest_year <- latest_year - N
      
      subset_data <- subset(data, year >= earliest_year & year <= latest_year & country == country_selected)
      
      if (nrow(subset_data) > 1) {
        co2_change <- max(subset_data$co2, na.rm = TRUE) - min(subset_data$co2, na.rm = TRUE)
        paste("Change in CO2 Emission for", country_selected, "over the last", N, "years:", co2_change)
      } else {
        paste("Insufficient data for", country_selected, "to calculate change.")
      }
    })
    
    output$total_co2 <- renderText({
      selected_country <- input$country
      country_data <- data %>%
        filter(country == selected_country)
      total_co2 <- sum(country_data$co2)
      paste("Total CO2 Production for", selected_country, ":", total_co2)
    })
    
    # Return the plot
    plot
  })
  
}
