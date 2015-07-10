source('load_data.R')

data<-load_data();

#1
#create file
png(filename = "plot1.png", width = 480, height = 480)
#build histogram
hist(data$Global_active_power,col = "Red",main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
#close device
dev.off()