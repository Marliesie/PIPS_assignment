# Q.3.1.13
# Plot a stock’s price development and save plot
plotstock <-
  function(my_symbol = "SMCI",
           year = 2022,
           my_file_name = "Stockchart") {
    png(paste0(my_file_name, ".png"))
    timepoint1 <- paste(year, "/01/01", sep = "")
    timepoint2 <-
      paste((year + 1), "/01/01", sep = "")
    symbol_data <-
      getSymbols(my_symbol,
                 auto.assign = FALSE,
                 from = timepoint1,
                 to = timepoint2)
    print(chart_Series(x = symbol_data, name = my_file_name))
    dev.off()
  }