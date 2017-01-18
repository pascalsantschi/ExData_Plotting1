list.files()
setwd("Desktop")

PW <- read.csv("household_PW_consumption.txt", sep=";", header=TRUE,stringsAsFactors=FALSE,na.strings="?")
PW_tbl <- tbl_df(PW)

PW_02 <- filter(PW,Date %in% c("1/2/2007","2/2/2007")) 
PW_02$DateTime <- strptime(paste(PW_02$Date,PW_02$Time),"%d/%m/%Y %H:%M:%S")
png("plot3.png",width=480,height=480)
plot(PW_02$DateTime, PW_02$Sub_metering_1,type="l",ylab="Energy sub metering",xlab=NA,col="black")
lines(PW_02$DateTime, PW_02$Sub_metering_2, col="red")
lines(PW_02$DateTime, PW_02$Sub_metering_3, col="blue")
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
