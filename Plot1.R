data = read.csv("household_power_consumption.txt", header = TRUE, sep = ";",stringsAsFactors = FALSE, na.strings = "?")
subdata <- subset(data, Date == "1/2/2007" | Date =="2/2/2007")
plot1 <- hist(subdata$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)") 
plot1
dev.copy(png,'plot1.png')
dev.off()
