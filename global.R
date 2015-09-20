library(shiny)
library(FinCal)

noData <- data.frame(date = c(Sys.Date() - 35, Sys.Date()), close = c(0,0))

sharePrice <- function(symbol) {
  tryCatch(get.ohlc.google(symbol), 
           error = function(e) {noData})
}