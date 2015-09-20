
# This is the user-interface definition of a Shiny web application 
#  for Share Price Predictor Application
# 

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Share Price Predictor Application"),
  
  # Sidebar with a text input for name of share (Examples provided)
  sidebarLayout(
    sidebarPanel(
      textInput('share', 'Share Symbol', ''),
      submitButton('Submit')
    ),
    
    # Show a line chart plot of the share price
    mainPanel(
      h3('One Year Results of prediction'),
      h4('Share'),
      verbatimTextOutput("inputValue"),
      plotOutput("distLineChartPlot"),
      h4(verbatimTextOutput("prediction"))
    )
  )
))