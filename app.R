
#https://shiny.rstudio.com/tutorial/
#This is the user interface and is defined in a source file named ui.R
library(shiny)

ui <- fluidPage(
  #Title of the app
  titlePanel("First Shiny App"),
  sidebarLayout(
  ##sidebar Panel
  sidebarPanel(
     sliderInput (inputId = "obs",
     label = "Number of observations:",
     min = 1,
     max = 1000,
     value = 500)
    
  ),
  ##main panel to show the output
  mainPanel(
    plotOutput("hist")
  )
)
)

# #The server side of the appliaction is shown below. 
#A random distribution with the requested number of observation is generated
#and then plotted as a histogram.
server <- function(input, output){
  #Expression that generates a plot of the distribution.
  #The expression is wrapped in a call to renderplot to
  #indicate that:

  #1) It is reactive and therefore should be automatically
  #re-executed when input changes.
  #2) Its output type is a plot
  output$hist <- renderPlot({

        hist(rnorm(input$obs))

  })
}
# 
shinyApp(ui = ui, server = server)