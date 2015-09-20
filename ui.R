
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
      helpText('Refer http://www.nasdaq.com/markets/most-active.aspx',
               'to find any some most active shares'),
      submitButton('Submit')
    ),
    
    # Main Panel consisting of all outputs
    mainPanel(
      helpText('Step (1): Enter Share Symbol'),
      helpText('Step (2): Press Submit'),
      helpText('Step (3): Check Historical results as well as future (year from today) predicted value'),
      helpText('Note: If you enter an invalid input, then a straight share price line (default) as well as an error message will be shown'),
      h4('Input'),
      verbatimTextOutput("inputValue"),
      # Show a line chart plot of the share price
      plotOutput("distLineChartPlot"),
      helpText('Plot shows close (closing price) value for that date'),
      h4(verbatimTextOutput("prediction"))
    )
  )
))