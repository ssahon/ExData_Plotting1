source('load_data.R')

data<-load_data();

#3
#create file
png(filename = "plot3.png", width = 480, height = 480)
#build plot
plot(data$Date_Time,data$Sub_metering_1,type = "l", xlab = "",ylab = "Energy sub metering")
#add second dataset
points(data$Date_Time,data$Sub_metering_2,col="Red",type="l")
#add third dataset
points(data$Date_Time,data$Sub_metering_3,col="Blue",type="l")
#add legend
legend("topright",col = c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1))
#close device
dev.off()