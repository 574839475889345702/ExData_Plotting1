# Generate Plot of Global Active Power
plot2 <- function(subpower)
{
  png(filename = "plot2.png")
  
  plot(subpower$Time,subpower$Global_active_power, ylab = "Global Active Power (kilowatts)", xlab = "", typ = 'l')
  
  dev.off()
}