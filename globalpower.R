power <- read.csv("household_power_consumption.txt",sep=";",stringsAsFactors=FALSE,na.strings = "?")
power$Date <- as.Date(power$Date, "%d/%m/%Y")
subpower$Time <- strptime(paste(subpower$Date,subpower$Time), "%Y-%m-%d %H:%M:%S")
subpower <- subset(power,Date <= as.Date("2007-02-02") & Date >= as.Date("2007-02-01")  )


hist(subpower$Global_active_power, col = "red")