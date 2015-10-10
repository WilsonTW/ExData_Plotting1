# Author: Wilson
# Date  : 2015-10-09
# Description:
# plot histogram of data_sub$Global_active_power
###############################################################################
# Load data
source("load_data.R")

# Open png device
png(file = "plot1.png", width = 480, height = 480)

# Plot
hist(data_sub$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "red")

# Turn off device
dev.off()
