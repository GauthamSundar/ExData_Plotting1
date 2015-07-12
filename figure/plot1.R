d <- read.csv2("household_power_consumption.txt", stringsAsFactors=F)
x <- d[d[,"Date"]%in% c("1/2/2007","2/2/2007"),]
png("plot1.png", width=480, height=480 )
hist(as.numeric(x[,3]), xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "Red", main = "Global Active Power")
dev.off()


