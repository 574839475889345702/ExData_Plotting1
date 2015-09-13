# Generate Histogram of Global Active Power
plot1 <- function()
{
  png(filename = "plot1.png")

  hist(subpower$Global_active_power, col = "red",main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

  dev.off()
}