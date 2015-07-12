d <- read.csv2("household_power_consumption.txt", stringsAsFactors=F)
x <- d[d[,"Date"]%in% c("1/2/2007","2/2/2007"),]
library(lubridate)
s <- paste(x[,1],x[,2]) # Combining Date and time
w <- dmy_hms(s)
p <- as.numeric(x[,3]) # Converting Power to numeric
png("plot2.png", width=480, height=480 )
plot(w,p,type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()




