library(plotly)
library(bslib)

source("Chart1_KL.R")
source("Chart2_KY.R")
source("Chart3_SL.R")

intro_page <- tabPanel(
  "Introduction",
  ui <- fluidPage(
    # Add custom CSS styles
    tags$head(
      tags$style(HTML("
      .intro-image {
        display: in-block;
        text-align: center;
        margin: 0px;
        width: 300px;
        height: 400px;
      }
      
      .image-container {
        text-align: center;
      }
      
      h2 {
        color: #333;
        font-size: 24px;
        margin-bottom: 10px;
      }
      
      p {
        color: #666;
        font-size: 16px;
        margin-bottom: 20px;
      }
    "))
    ),
    
    # Add the image container
    div(class = "image-container",
        # Add the first image
        div(class = "intro-image",
            tags$img(src = "airplane.jpg")
        ),
        # Add the second image
        # div(class = "intro-image",
        #     tags$img(src = "inflight.jpg")
        # )
    ),
    
    # Add the project overview text
    h2("Project Overview"),
    p("Our project aims to analyze the factors that influence passenger satisfaction in the airline industry and provide insights on how it can be improved. We also explore whether passenger expectations differ based on gender, age, and flight classes, and investigate the impact of flight distance on passenger evaluations."),
    
    # Add the major questions section
    h2("Major Questions"),
    p("What factors would influence passenger satisfaction?"),
    p("How can it be improved?"),
    p("Are passengers’ expectations different depending on their gender and age?"),
    p("Is passenger satisfaction different depending on flight classes?"),
    p("Does a long flight distance lead to a negative evaluation?"),
    
    # Add the data source section
    h2("Data Source"),
    p("You can find the original dataset on Kaggle:"),
    a("Passenger Satisfaction Dataset", href = "https://www.kaggle.com/datasets/binaryjoker/airline-passenger-satisfaction"),
    
    # Add the ethical considerations section
    h2("Ethical Considerations"),
    p("Using the dataset for commercial purposes of other airlines may raise ethical concerns and harm the specific airline from which the data originated. It is crucial to draw careful conclusions and avoid confounding results or false information that could mislead future judgments. The dataset's limitations include the anonymity of the data source, which limits its credibility, and the lack of detailed feature descriptions."),
    
    h3("Implications"),
    p("The findings from this project can be valuable for technologists, designers, and policymakers in improving airline travel. By understanding the factors that influence passenger satisfaction, designers can make informed decisions about features to include or remove in order to enhance the customer experience. Factors like flight distance can be analyzed to determine the maximum distance before customer satisfaction declines, leading to better flight design and customer loyalty."),
    
    h3("Limitations & Challenges"),
    p("This project does not address pre-existing personal biases, gender nonbinary considerations, and the influence of the airport itself. The dataset primarily consists of loyal customers, potentially leading to higher ratings for the airline. It also categorizes individuals into gender binaries, overlooking those who identify outside these categories. Additionally, the data does not capture the service quality within the airport, such as airport layout, ease of finding gates, or efficiency in baggage claim.")
  )
)

viz1_page <- tabPanel(
  "Flight Distance & Satisfaction",
  ui <- fluidPage(
    titlePanel("Flight Distance & Satisfaction"),
    sidebarLayout(
      sidebarPanel(
        sliderInput(
          inputId = 'Flight.Distance',
          label = "Distance of Flight", 
          min = 100,
          max = 4000,
          value = c(100, 4000))
      ),
      
      mainPanel(
        plotlyOutput(outputId = "flight_dist_chart"),
        h2("Description"),
        p("The chart above looks at flight distance. 
          As you can see in the chart although the range is quite large you can notice a general pattern showing that most shorter flights tend to receive less satisfied passengers. 
          In contrast many of of the longer flights tend to have a greater percent of satisfied passengers. 
          With this information we can recognize what distance's passengers might be comfortable with and which distances might leave passengers unhappy or dissatisfied.")
      )
    )
  )
)

# Select box (widget) for Chart2
select_widget_chart2 <- selectInput(
  inputId = "satisfaction_selection",
  label = "Satisfaction",
  choices = unique(sum_score$satisfaction)
)

# Radio buttons (widget) for Chart2
radio_widget_chart2 <- radioButtons(
  inputId = "service_selection",
  label = "Service",
  choices = unique(sum_score$service)
)

# Main panel for Chart2
viz2_main <- mainPanel(
  plotlyOutput(outputId = "chart2"),
  h2("Description"),
  p("The bar chart above shows how inflight services such as inflight dining and drinks, inflight entertainment, and inflight wifi service influence passenger satisfaction. 
    It illustrates the difference of the number of people who rated those services out of 5. 
    It can be seen that if inflight wifi service is mostly marked as 2 or 3, passenger feel netural or dissatisfied with airlines. 
    On the other hand, if they can provide good inflight entertainment, passengers tend to be satisfied with the experience. 
    It is important for airline companies to know how passengers feel about those services and what inflight services they place a high value on so that they can work on what passengers think needs to be improved.")
)

# Page for Chart2
viz2_page <- tabPanel(
  "Inflight Service",
  sidebarLayout(
    sidebarPanel(
      select_widget_chart2,
      radio_widget_chart2),
    viz2_main
  )
)

# Select box (widget) for Chart3
select_widget_chart3 <- selectInput(
  inputId = "class_type",
  label = "Travel Class",
  choices = unique(df$Class)
)

# Slider (widget) for Chart3
slider_widget_chart3 <- sliderInput(
  inputId = 'passenger_age',
  label = "Passenger Age", 
  min = 0,
  max = 85,
  value = c(0, 85)
)

viz3_page <- tabPanel(
  "Passenger age and flight class",
  sidebarLayout(
    sidebarPanel(
      select_widget_chart3,
      slider_widget_chart3),
    mainPanel(
      plotlyOutput(outputId = "chart3"),
      h2("Description"),
      p("The last chart explains how the ages of passengers and their flight class influences their satisfaction in flights.
        We can see that in general a better flight class has more satisfied passengers, which implies settings of a higher flight class provides
        passengers with better service, seating, priority in general. Other than that, we can also see the difference of the amount of passengers in terms of age,
        which shows the target customers, adolescents and adults, of a flight business.")
    )
  )
)

conclusion_page <- tabPanel(
  "Conclusion",
  conclusion_page <- tabPanel(
    title = "Conclusion",
    fluidRow(
      column(
        width = 12,
        tags$h2("Summary Takeaways"),
        tags$p("On analyzing the dataset of airline passenger satisfaction, several major takeaways emerge that shed light on specific aspects of the analysis. The following three key findings provide valuable insights for understanding passenger satisfaction and improving airline services:"),
        tags$ol(
          tags$li("Influence of Flight Distance on Passenger Satisfaction: One surprising discovery is that passengers tend to be more satisfied with long-distance flights compared to short-distance flights."),
          tags$li("Importance of Inflight Service: The analysis reveals a strong correlation between passenger satisfaction and inflight service. Passengers who are provided with amenities such as food and drink, inflight entertainment, and WiFi services tend to report higher satisfaction levels."),
          tags$li("Flight Class and Passenger Satisfaction: The graph illustrating the flight class of passengers indicates that individuals with higher class accommodations tend to have a higher satisfaction rate.")
        ),
        tags$p("Additionally, the analysis uncovers a noteworthy difference in satisfaction levels between younger and older generations, highlighting the importance of understanding the varying expectations and preferences of different demographic groups."),
        tags$p("In conclusion, this project demonstrates that passenger satisfaction in the airline industry is influenced by various factors, including inflight service quality, flight distance, and flight class. By emphasizing the significance of these aspects, airline companies can make informed decisions to enhance their services, bridge the gap between passenger expectations and experiences, and ultimately improve customer loyalty and satisfaction.")
      )
    )
  )
)

ui <- navbarPage(
  theme = bs_theme(bootswatch = "morph"),
  "How can airlines improve flight quality for their passengers?",
  intro_page,
  viz1_page,
  viz2_page,
  viz3_page,
  conclusion_page
)