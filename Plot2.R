data = read.csv("household_power_consumption.txt", header = TRUE, sep = ";",stringsAsFactors = FALSE, na.strings = "?")
subdata <- subset(data, Date == "1/2/2007" | Date =="2/2/2007")
DT<- strptime(paste(subdata$Date, subdata$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
plot2 <- plot(DT, subdata$Global_active_power,type= "l", ylab = "Global Active Power (kilowatts)") 
dev.copy(png,'plot2.png')
dev.off()
