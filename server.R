

# This is the server logic for a Shiny web application
#  for Share Price Predictor Application
# 

shinyServer(function(input, output) {
  #reactive(input$Submit)
  output$inputValue <- reactive(input$share)
  result <- reactive(sharePrice(input$share))
  output$distLineChartPlot <- renderPlot({
    lineChart(result())
  })
  output$prediction <-
    reactive({
      data <- result()
      if (identical(noData, data)) {
        'Share Symbol ERROR: Invalid: Try GOOG,AAPL,MRIN or any other Symbol from NYSE'
      }
      else {
        data$ndate <- as.numeric(as.Date(data$date))
        fit <- lm(close ~ ndate, data)
        oneYearFutureDate <- Sys.Date() + 365
        oneYearFutureNumericDate <- as.numeric(oneYearFutureDate)
        predicted <- predict(fit, data.frame(ndate = oneYearFutureNumericDate))
        output <- if (predicted < 0) 'Share Price value less than zero'
                  else paste0('Predicted Price will be ',round(predicted, 2))
        paste0('Current Price: ', data['1','close'], 
              '.  ', oneYearFutureDate, ': ', output)
      }
    })
  
  
})