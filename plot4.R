#generate multiplot
plot4 <- function(subpower)
{
  png(filename = "plot4.png")
  
  par(mfrow = c(2,2))
  
  #plot 1,1
  plot(subpower$Time,subpower$Global_active_power, ylab = "Global Active Power (kilowatts)", xlab = "", typ = 'l')
  
  #plot 1,2
  plot(subpower$Time, subpower$Voltage, ylab = "Voltage", xlab ="datetime", type = 'l')
  
  #plot 2,1
  with(subpower,plot(subpower$Time, subpower$Sub_metering_1, ylab = "Energy Sub Metering", xlab = "", type = "n"))
  with(subpower,lines(subpower$Time, subpower$Sub_metering_1, col = "black"))
  with(subpower,lines(subpower$Time, subpower$Sub_metering_2, col = "red"))
  with(subpower,lines(subpower$Time, subpower$Sub_metering_3, col = "blue"))
  legend("topright", lty = 1, col = c("black","red","blue"), legend = c("Sub Metering 1","Sub Metering 2","Sub Metering 3"))
  
  #plot 2,2
  plot(subpower$Time, subpower$Global_reactive_power, ylab = "Global Reactive Power", xlab ="datetime", type = 'l')
  
  dev.off()
}