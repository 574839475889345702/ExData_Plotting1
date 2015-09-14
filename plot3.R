# Generate Plot of Energy Sub Metering
plot3 <- function(subpower)
{
  png(filename = "plot3.png")
  
  with(subpower,plot(subpower$Time, subpower$Sub_metering_1, ylab = "Energy Sub Metering", xlab = "", type = "n"))
  with(subpower,lines(subpower$Time, subpower$Sub_metering_1, col = "black"))
  with(subpower,lines(subpower$Time, subpower$Sub_metering_2, col = "red"))
  with(subpower,lines(subpower$Time, subpower$Sub_metering_3, col = "blue"))
  legend("topright", lty = 1, col = c("black","red","blue"), legend = c("Sub Metering 1","Sub Metering 2","Sub Metering 3"))
  
  dev.off()
}