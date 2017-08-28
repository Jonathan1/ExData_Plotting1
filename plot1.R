source("common_functions.R")
full_data_set <- read_the_data()
sub_set <- load_subset(full_data_set)
	
#make the plot
plot1<-function(){
	hist(sub_set$Global_active_power,main = paste("Global Active Power"),col = "red",xlab = "Global Active Power(kilowatts)",ylab = "Frequency",)
	dev.copy(png,file="plot1.png",width=480,height=480)
	dev.off()
}
plot1() 