library(shiny)
shinyUI(fluidPage(
  titlePanel("The Average of the Number of Die Rolls"),
  sidebarLayout(
    sidebarPanel(
      h3("Choose the number of dies and roll 1000 times"),
      sliderInput("slider1", label = h3("Slider"), min = 1, 
                  max = 50, value = 1),
      selectInput("col1", "Choose color:",
                  c("red" = "red",
                    "blue" = "blue",
                    "green" = "green")),
      helpText("This application simulates the number of die rolls and take the average."),
      helpText("It indicates a statistical principle. "),
      helpText("The more data that goes into the sample mean, the more concentrated its density/mass functions are around the population mean")

    ),
    mainPanel(
      h3("Histogram of means by sample size"),
      textOutput("text1"),
      plotOutput("plot1")
    )
  )
)
  
)