source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

globalPowerGraphs<- function()
{
  power <- read.csv("data/household_power_consumption.txt",sep=";",stringsAsFactors=FALSE,na.strings = "?")
  power$Date <- as.Date(power$Date, "%d/%m/%Y")
  subpower <- subset(power,Date <= as.Date("2007-02-02") & Date >= as.Date("2007-02-01")  )
  subpower$Time <- strptime(paste(subpower$Date,subpower$Time), "%Y-%m-%d %H:%M:%S")
  
  plot1(subpower)
  plot2(subpower)
  plot3(subpower)
  plot4(subpower)
}