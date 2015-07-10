source('load_data.R')

data<-load_data();

#2
#create file
png(filename = "plot2.png", width = 480, height = 480)
#build plot
plot(data$Date_Time,data$Global_active_power,type = "l",xlab = '',ylab = "Global Active Power (kilowatts)")
#close device
dev.off()