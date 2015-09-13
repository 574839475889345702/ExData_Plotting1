# Generate Plot of Global Active Power
plot2 <- function()
{
  png(filename = "plot2.png")
  
  plot(subpower$Time,subpower$Global_active_power, ylab = "Global Active Power (kilowatts)", xlab = "", typ = 'l')
  
  dev.off()
}