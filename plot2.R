source("common_functions.R")
full_data_set <- read_the_data()
sub_set <- load_subset(full_data_set)
date_time_converted <- convert_date_time(sub_set)

#make the plot
plot2<-function(){
	plot(date_time_converted, sub_set$Global_active_power, type="l", xlab=" ",ylab = "Global Active Power(kilowatts)")
	dev.copy(png,file="plot2.png",width=480,height=480)
	dev.off()
}
plot2()
