library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("Celsius to Fahrenheit Converter"),
    sidebarPanel(
      numericInput('Celsius', 'How Hot is it there?', 25, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of conversion'),
      h4('So if its'),
      verbatimTextOutput("inputValue"),
      h4('degrees Celcius, that means its'),
      verbatimTextOutput("conversion"),
      h4('degrees Fahrenheit'), 
      h2('Thanks for Playing!')
    )
  )
)