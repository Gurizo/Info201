library(bslib)
library(plotly)

data <- read.csv("http://raw.githubusercontent.com/owid/co2-data/master/owid-co2-data.csv")

my_theme <- bs_theme(
  bg = "#b8860b", # background color
  fg = "white",   # foreground color
)

ui <- navbarPage(
  title = "CO2 Emission",
  theme = my_theme,
  tabPanel("Introduction",
           fluidPage(
             titlePanel("CO2 Emissions Visualization App By Lucas Cho"),
             div(class = "intro-container",
                 h2("Welcome to our CO2 Emissions Visualization App!"),
                 p("This interactive application allows you to delve into the world of CO2 emissions data from various countries across the globe. By harnessing the power of data visualization, our goal is to offer you insights into the trends, patterns, and comparisons of CO2 emissions over time and across regions."),
                 h4("About the Dataset"),
                 p("The dataset used in this application is curated by Our World in Data, a trusted organization that maintains an extensive collection of essential metrics related to CO2 and greenhouse gas emissions. You can read more about the dataset in the 'Data Description' tab."),
                 h4("Visualize CO2 Emissions"),
                 p("Within this application, you have the ability to select up to three countries of interest and visualize their CO2 emission trends over a specific time period. The interactive plot provides a user-friendly interface, allowing you to zoom in, pan, and explore the data in detail. Additionally, you have the option to customize the range of the years that you want to display on the plot."),
                 h4("Summary Insights"),
                 p("In addition, our application offers a summary tab that presents key insights derived from the dataset. You can explore the average CO2 emissions across all countries, identify the countries with the highest and lowest emissions, and examine the changes in emissions over a specific time frame."),
                 h4("Limitations and Considerations"),
                 p("It's important to note that while the dataset is comprehensive, there may be limitations and potential issues to consider. Discrepancies in reporting, data gaps, and variations in data collection methodologies among countries can affect the accuracy and comparability of the results. Nonetheless, this application serves as a valuable tool for gaining a broader understanding of global CO2 emissions and examining the relative performance of different countries."),
                 h4("Get Started"),
                 p("We invite you to delve into the CO2 emissions data and uncover valuable insights about our global environmental impact. Enjoy exploring the app and discovering the stories behind the numbers!")
             )
           )
  ),
  tabPanel("Data Description",
           fluidPage(
             titlePanel("Data Description"),
             column(12,
                    div(class = "data-description-container",
                        h2("CO2 and Greenhouse Gas Emissions Dataset"),
                        p("The CO2 and Greenhouse Gas Emissions dataset is maintained by Our World in Data, an organization dedicated to compiling and updating global datasets to provide comprehensive insights into important global issues. This dataset contains essential metrics related to CO2 emissions and greenhouse gas emissions, including annual CO2 emissions, emissions per capita, cumulative emissions, consumption-based emissions, energy mix, and other relevant indicators."),
                        h4("Data Collection and Generation"),
                        p("The data in this dataset is collected and generated using a variety of sources and methods. It incorporates information from national and international databases, academic research papers, reports, and statistical publications. The data collection techniques employed may vary depending on the specific metric and country, involving direct measurements, estimation models, and reporting by countries and organizations."),
                        h4("Purpose of Data Collection"),
                        p("The primary objective of collecting this data is to monitor and analyze global trends and patterns in CO2 and greenhouse gas emissions. The dataset serves as a valuable resource for researchers, policymakers, and the general public, providing insights into the impact of human activities on climate change."),
                        h4("Limitations and Considerations"),
                        p("It is important to recognize certain limitations and potential issues associated with this dataset. The accuracy and reliability of the data depend on the reporting practices of countries and organizations. Inconsistencies and errors may arise due to variations in reporting methods, data availability, and quality control procedures. Additionally, comparisons across countries may be complicated by differences in measurement and reporting methodologies. Furthermore, the dataset may not provide a fully comprehensive representation of emissions from all sources or regions."),
                        p("To better analyze the dataset, it is important to approach the data with caution and consider these limitations. By acknowledging these potential shortcomings, we can interpret the findings and make informed decisions based on the dataset's implications.")
                    )
             )
           )
  ),
  tabPanel("Summary",
           fluidPage(
             titlePanel("Summary"),
             fluidRow(
               column(6,
                      selectInput("country", "Select Country", choices = unique(data$country))
               ),
               column(
                      width = 12,
                      h3("CO2 Emission Summary"),
                      verbatimTextOutput("averageCO2"),
                      verbatimTextOutput("highestCO2"),
                      verbatimTextOutput("lowestCO2"),
                      verbatimTextOutput("CO2Change"),
                      verbatimTextOutput("total_co2")
                ),
               column(12,
                      h2("The average, highest, loweest, change, and total of the CO2 for each country varies depending on its own circumstance. However, we can notice that countries with high population density or with high GDP tends to have a higher CO2 emission in general. We can compare between the values for each country by selecting the country that we want.", style = "font-size: 14px;")
               )
             )
           )
  ),
  tabPanel("Visualization",
           fluidPage(
             titlePanel("CO2 Emissions by Country"),
             sidebarLayout(
               sidebarPanel(
                 selectInput("country1", "Select Country 1", choices = unique(data$country)),
                 selectInput("country2", "Select Country 2", choices = unique(data$country)),
                 selectInput("country3", "Select Country 3", choices = unique(data$country)),
                 sliderInput("year_range", "Select Year Range", min = min(data$year), max = max(data$year),
                             value = c(min(data$year), max(data$year)), step = 1),
               ),
               mainPanel(
                 plotlyOutput("co2Plot"),
                 h2("According to the chart provided, we compare the CO2 emissions between different countries up to 3 countries. This tells us that Asia has pretty high CO2 emission rate due to its population and the size. However, Africa has very low CO2 emission compared to the United States. One more thing to note is that the USA and the Europe have a descending rate of CO2 emission, which seems very optimistic as they both include a big population.", style = "font-size: 14px;")
               ),
             )
           )
  )
)
