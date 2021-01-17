#The server side of the appliaction is shown below. 
#A random distribution with the requested number of observation is generated
#and then plotted as a histogram.
shinyServer(function(input, output){
  #Expression that generates a plot of the distribution. 
  #The expression is wrapped in a call to renderplot to 
  #indicate that:
  
  #1) It is reactive and therefore should be automatically 
  #re-executed when input changes.
  #2) Its output type is a plot
  output$tplot <- renderPlot({
    
    #generate an rnorm distribution and plot it
    
    dist <- rnorm(input$obs)
    hist(dist)
    
  })
})