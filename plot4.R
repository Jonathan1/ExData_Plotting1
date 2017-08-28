source("common_functions.R")
full_data_set <- read_the_data()
sub_set <- load_subset(full_data_set)
date_time_converted <- convert_date_time(sub_set)

#make the plot
plot4<-function(){
  par(mfrow=c(2,2))
  plot(date_time_converted, sub_set$Global_active_power, type="l", xlab=" ",ylab = "Global Active Power(kilowatts)")
  plot(date_time_converted, sub_set$Voltage,type = "l",xlab="datetime",ylab="Voltage")
  plot(date_time_converted, sub_set$Sub_metering_1, type="l", xlab=" ",ylab = "Energy sub metering")
  lines(date_time_converted,sub_set$Sub_metering_2, type = "l", col="red")
  lines(date_time_converted,sub_set$Sub_metering_3, type = "l", col="blue")
  legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd = 2.5,lty = 1,col=c("black","red","blue"))
  plot(date_time_converted,sub_set$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
  dev.copy(png,file="plot4.png",width=480,height=480)
  dev.off()
}  
plot4()