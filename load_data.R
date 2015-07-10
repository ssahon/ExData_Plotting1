load_data<-function()
{
    library(dplyr)
    library(data.table)
    
    # download original dataset
    downloadURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    if (!file.exists("power_consumption_ex")) {
        download.file(downloadURL, destfile="power_consumption.zip")
        unzip("power_consumption.zip",exdir ="power_consumption_ex" )
    }
    
    #load data
    originalData<-read.csv('./power_consumption_ex/household_power_consumption.txt',header = T,sep = ";",na.strings = c("?"))
    
    #filter data
    data<-filter(originalData,Date=="1/2/2007"| Date=="2/2/2007")
    #convert character date and time to date/time column
    data$Date_Time<-strptime(paste(data$Date,data$Time, sep = " "),format = '%d/%m/%Y %H:%M:%S')
    #remove columns
    data$Date<-NULL
    data$Time<-NULL
    
    data
}