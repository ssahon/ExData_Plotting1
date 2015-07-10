source('load_data.R')

data<-load_data();

#4
#create file
png(filename = "plot4.png", width = 480, height = 480)
#make 2*2 grid for 4 plots
par(mfrow=c(2,2))

#plot 1
plot(data$Date_Time,data$Global_active_power,col = "black",xlab="", ylab = "Global Active Power",type="l")
#plot 2
plot(data$Date_Time,data$Voltage,col = "black",xlab="datetime",ylab = "Voltage",type="l")
#plot 3
plot(data$Date_Time,data$Sub_metering_1,type = "l", xlab = "",ylab = "Energy sub metering")
points(data$Date_Time,data$Sub_metering_2,col="Red",type="l")
points(data$Date_Time,data$Sub_metering_3,col="Blue",type="l")
legend("topright",col = c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1))
#plot 4
plot(data$Date_Time,data$Global_reactive_power,col = "black",xlab="datetime", ylab = "Global_reactive_power",type="l")
#close device
dev.off()