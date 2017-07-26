library(shiny)
library(ggplot2)
shinyServer(function(input, output){
  # reactive function
  datainput <- reactive({
    nosim <- 1000
    apply(matrix(sample(1:6,nosim*input$slider1,replace=TRUE), nosim),1,mean)
  })
  output$text1 <- renderText({paste("Number of Dies is ",input$slider1)})
  output$plot1 <- renderPlot({
    qplot(datainput(), geom="histogram",binwidth=.2, col=I("black"),
          fill=I(input$col1), alpha=I(.2), xlab="Number")
  })
}
)