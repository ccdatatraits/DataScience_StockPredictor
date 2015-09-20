library(shiny)
library(FinCal)

noData <- data.frame(date = c('2013-01-02', '2013-01-03'), close = c(0,0))

sharePrice <- function(symbol) {
  tryCatch(get.ohlc.google(symbol), 
           error = function(e) {noData})
}