d <- read.csv2("household_power_consumption.txt", stringsAsFactors=F)
x <- d[d[,"Date"]%in% c("1/2/2007","2/2/2007"),]
m1 <- as.numeric(x[,7])
m2 <- as.numeric(x[,8])
m3 <- as.numeric(x[,9])
library(lubridate)
s <- paste(x[,1],x[,2]) # Combining Date and time
w <- dmy_hms(s)
png("plot3.png", width=480, height=480)
plot(w,m1,type = "l", xlab = "", ylab = "Energy sub-metering")
lines(w,m2,type = "l", col = "Red")
lines(w,m3,type = "l", col = "Blue")
legend("topright",inset=0.05, legend= c("sub-metering_1","sub-metering_2","sub-metering_3"), lty = c(1,1), col=c("Black","Red","Blue"))
dev.off()



