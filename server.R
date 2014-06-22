
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

usStocks = read.csv(file="UsStocks.csv")


shinyServer(function(input, output) {
  sectors = unique(usStocks$Sector)
  sectors = sectors[order(sectors)]
  industries = unique(usStocks$Industry)
  industries = industries[order(industries)]
  output$text1 = renderText ({
    paste("Details for stock ticker:  ", input$ticker)
  })
  output$details = renderTable({
    d = usStocks[usStocks$Symbol == input$ticker,c(2,3,10,4,5,6,7,8,9)]
    d    
  })
  output$text2 = renderText ({
    paste("Details of stocks in Industry:  ", input$ind, " and Exchnage: ", input$exch )
  })
  output$bySector = renderDataTable({
    s = usStocks[usStocks$Industry == input$ind & usStocks$Exch == input$exch, c(10,8,2,3,4,5,6,7,9)]
    if (nrow(s) == 0) { 
      s = data.frame("No Stocks found")
      colnames(s) = "Symbol"
    }
    s
  })
  
})

