#First read the text document into a table
read_the_data <- function() {
	x <- read.table("household_power_consumption.txt",sep = ";",header = TRUE, stringsAsFactors=FALSE,na.strings = "?")
	x
}

#Load subset
load_subset <- function(x) {
	y <- subset(x,x$Date=="1/2/2007"|full_data_set$Date=="2/2/2007")
	y
}

#convert date and time to a nice format
convert_date_time <- function(x) {
	y <- strptime(paste(x$Date, x$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
	y
}