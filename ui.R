
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Share Price Prediction"),

  # Sidebar with a text input for name of share (Examples provided)
  sidebarLayout(
    sidebarPanel(
      textInput('share', 'Share Symbol', 'GOOG'),
      submitButton('Submit')
    ),

    # Show a line chart plot of the share price
    mainPanel(
      plotOutput("distLineChartPlot")
    )
  )
))
