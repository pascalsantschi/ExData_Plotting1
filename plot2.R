list.files()
setwd("Desktop")

PW <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,stringsAsFactors=FALSE,na.strings="?")
PW_tbl <- tbl_df(PW)

PW_02 <- filter(PW,Date %in% c("1/2/2007","2/2/2007")) 
PW_02$DateTime <- strptime(paste(PW_02$Date,PW_02$Time),"%d/%m/%Y %H:%M:%S")
png("plot2.png",width=480,height=480)
plot(PW_02$DateTime, PW_02$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=NA)
dev.off()
