
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
    
    # Main Panel consisting of all outputs
    mainPanel(
      h4('Input'),
      verbatimTextOutput("inputValue"),
      # Show a line chart plot of the share price
      plotOutput("distLineChartPlot"),
      h4(verbatimTextOutput("prediction"))
    )
  )
))