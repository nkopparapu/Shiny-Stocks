
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Shiny Stocks - US"),
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    textInput("ticker", "Stock symbol to View:", "AA"),
    br(),
    br(),
    h4("View list of stock by Exchange & Industry"),
    selectInput("exch", "Choose an Exchange:", 
                choices = c("NYSE", "NASDAQ", "AMEX"),
                selected ="NYSE"),
    #selectInput("sector", "Choose a sector:", 
    #            choices = sectors ),
    selectInput("ind", "Choose an Industry:", 
                choices = industries ),
    
    br(),
    br(),
    br(),
    hr(),
    br(),
    
    p(h3("You can find a brief doc about this app", 
         a("here", href = "Shiny-Stocks.html")))
      #a("here", href = "http://nkopparapu.shinyapps.io/Shiny-stocks/Shiny-Stocks.html")))
    
  ),
  

  mainPanel(
    h3(textOutput("text1")), 
    tableOutput("details"),
    br(),
    h3(textOutput("text2")),
    dataTableOutput("bySector")
  )
))
