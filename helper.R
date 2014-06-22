
# helper functions to load data
# 
list = read.csv(url("http://www.nasdaq.com/screening/companies-by-industry.aspx?exchange=AMEX&render=download"))
l1 = list[list$MarketCap != 0,c(1,2,3,4,6,7,8,9)]
amexList = l1[order(l1$Symbol),]
rownames(amexList) = 1:nrow(amexList)
amexList$Exch = apply(amexList, 1, function(row)"AMEX" )

list = read.csv(url("http://www.nasdaq.com/screening/companies-by-industry.aspx?exchange=NASDAQ&render=download"))
l1 = list[list$MarketCap != 0,c(1,2,3,4,6,7,8,9)]
nasdaqList = l1[order(l1$Symbol),]
rownames(nasdaqList) = 1:nrow(nasdaqList)
nasdaqList$Exch = apply(nasdaqList, 1, function(row)"NASDAQ" )

list = read.csv(url("http://www.nasdaq.com/screening/companies-by-industry.aspx?exchange=NYSE&render=download"))
l1 = list[list$MarketCap != 0,c(1,2,3,4,6,7,8,9)]
nyseList = l1[order(l1$Symbol),]
rownames(nyseList) = 1:nrow(nyseList)
nyseList$Exch = apply(nyseList, 1, function(row)"NYSE" )
usStocks = rbind(amexList,nasdaqList,nyseList)
write.csv(file="UsStocks.csv",usStocks)