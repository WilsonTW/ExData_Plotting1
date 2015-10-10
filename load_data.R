# Author: Wilson
# Date  : 2015-10-09
# Description:
# Download and format data from 
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
###############################################################################

#download data from web site
raw_file <- "./household_power_consumption.txt"
if(!file.exists(raw_file))
{
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                  destfile="household_power_consumption.zip", method="curl")
    unzip ("household_power_consumption.zip", exdir = "./")
}
#read and format data
if(!exists("data_sub"))
{
    data_all <- read.table("household_power_consumption.txt", header=TRUE, na.strings="?", sep=";")
    data_sub <- data_all[(data_all$Date=="1/2/2007" | data_all$Date=="2/2/2007" ), ]

    #format date and time
    data_sub$Time <- strptime(paste(data_sub$Date, data_sub$Time), "%d/%m/%Y %H:%M:%S")
    data_sub$Date <- as.Date(data_sub$Date, "%d/%m/%Y")
    data_sub$DateTime <- as.POSIXct(data_sub$Time)
}