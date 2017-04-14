## Unzip file in working directory & load data
unzip("exdata%2Fdata%2Fhousehold_power_consumption.zip")
f <- file("household_power_consumption.txt")
t <- read.table(text = grep("^[1,2]/2/2007", readLines(f), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)

# Generate Plot 1
hist(t$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")

## Save file and close device
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()