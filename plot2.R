# Author: Wilson
# Date  : 2015-10-09
# Description:
# plot xy-line of data_sub$DateTime v.s. data_sub$Global_active_power
###############################################################################
# Load data
source("load_data.R")

# Open png device
png(file = "plot2.png", width = 480, height = 480)

# Plot
plot(data_sub$DateTime, data_sub$Global_active_power,
     ylab = "Global Active Power (kilowatts)", xlab = "", type = "l")

# Turn off device
dev.off()