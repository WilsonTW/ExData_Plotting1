# Author: Wilson
# Date  : 2015-10-09
# Description:
# plot xy-line of data_sub$DateTime v.s. data_sub$Sub_metering_1
#                                        data_sub$Sub_metering_2
#                                        data_sub$Sub_metering_3
# with legend
###############################################################################
# Load data
source("load_data.R")

# Open png device
png(file = "plot3.png", width = 480, height = 480)

# Plot
plot(data_sub$DateTime, data_sub$Sub_metering_1, type = "l", xlab = "",
     ylab = "Energy sub metering")
lines(data_sub$DateTime, data_sub$Sub_metering_2, col = "red")
lines(data_sub$DateTime, data_sub$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lwd = 1)
       
# Turn off device
dev.off()