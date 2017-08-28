source("common_functions.R")
full_data_set <- read_the_data()
sub_set <- load_subset(full_data_set)
date_time_converted <- convert_date_time(sub_set)

#make the plot
plot3<-function(){
  plot(date_time_converted, sub_set$Sub_metering_1,type="l", xlab=" ",ylab = "Energy sub metering")
  lines(date_time_converted,sub_set$Sub_metering_2,type="l", col="red")
  lines(date_time_converted,sub_set$Sub_metering_3,type="l", col="blue")
  legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd = 2.5,lty = 1,col=c("black","red","blue"))
  dev.copy(png,file="plot3.png",width=480,height=480)
  dev.off()
}
plot3()