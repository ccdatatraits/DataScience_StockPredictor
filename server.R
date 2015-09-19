
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(FinCal)

shinyServer(function(input, output) {

  output$distLineChartPlot <- renderPlot({
    
    lineChart(get.ohlc.google(input$share))

  })

})
