#This is the user interface and is defined in a source file named ui.R
library(shiny)

shinyUI(pageWithSidebar(
  #Title of the app
  titlePanel("First Shiny App"),
  ##sidebar Panel
  sidebarPanel(
     sliderInput ("obs",
    "Number of observations:",
     min = 1,
     max = 1000,
     value = 500)
    
  ),
  ##main panel to show the output
  mainPanel(
    plotOutput("disPlot")
  )
))

