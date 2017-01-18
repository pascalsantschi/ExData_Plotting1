list.files()
setwd("Desktop")

PW <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,stringsAsFactors=FALSE,na.strings="?")
PW_tbl <- tbl_df(PW)

PW_02 <- filter(PW,Date %in% c("1/2/2007","2/2/2007")) 

png("plot1.png",width=480,height=480)
hist(PW_02$Global_active_power,xlab="Global Active Power (kilowatts)", main="Global Active Power",c="red")
dev.off()
