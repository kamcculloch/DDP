library(shiny)

Fahrenheit <- function(Celsius) Celsius*1.8 + 32

shinyServer(
  function(input, output){
    output$inputValue <- renderPrint({input$Celsius})
    output$conversion <- renderPrint({Fahrenheit(input$Celsius)})
  }
)