# Author: Wilson
# Date  : 2015-10-09
# Description:
# plot 2x2 figures on the device respectively
###############################################################################
# Load data
source("load_data.R")

# Open device
png(file = "plot4.png", width = 480, height = 480)

# plot
par(mfcol=c(2,2))

# step1 - Top left
plot(data_sub$DateTime, data_sub$Global_active_power,
     ylab = "Global Active Power", xlab = "", type = "l")

# step2 - Bottom left
plot(data_sub$DateTime, data_sub$Sub_metering_1, type = "l", xlab = "",
     ylab = "Energy sub metering")
lines(data_sub$DateTime, data_sub$Sub_metering_2, col='red')
lines(data_sub$DateTime, data_sub$Sub_metering_3, col='blue')
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lwd = 1)

# step3 - Top right
plot(data_sub$DateTime, data_sub$Voltage, xlab = "datetime", ylab = "Voltage",
     type = "l")

# step4 - Bottom right
plot(data_sub$DateTime, data_sub$Global_reactive_power, xlab = "datetime",
     ylab = "Global_reactive_power", type = "l")

# Turn off device
dev.off()