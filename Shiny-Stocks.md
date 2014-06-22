Shiny Stocks application
========================

This is a simple application that loads information about all listed stocks on NYSE, NASDAQ, AMEX.

You can view all the stocks by Exchange and industry 

or 

if you know the ticker, you can get the details of the stock by entering the ticker

The underlying is downloaded from nasdaq website. For example the stocks listed on AMEX are downloaded using the following url 

http://www.nasdaq.com/screening/companies-by-industry.aspx?exchange=AMEX&render=download"

Any stocks with a market cap of 0 are removed from the dataset.

All the downloaded data is combined together in to a single data frame.

From this a vector of all unique industries is created that is used for the selectInput 

The details for a single stock is rendered using the table output.

The details for list of stocks for the selected exchange & industry are rendered using the data table output, which provides additional capabiliites for sorting by any column, ability to select how rows are displayed, ability to search and pagination of data.

Hope you like this simple application to demonstrate the power of R & Shiny yet useful in the daily life for all stocks in the same industry and the respective details.





