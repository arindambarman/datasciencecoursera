rawfile <- file("C:/Users/arindam/Documents/Data Science/R Programming/household_power_consumption.txt", "r")
cat(grep("(^Date)|(^[1|2]/2/2007)",readLines(rawfile), value=TRUE), sep="\n", file="filtered.txt")
close(rawfile)
active_power<-read.csv(("C:/Users/arindam/Documents/Data Science/R Programming/filtered.txt"),sep=";")
Active_power=active_power$Global_active_power
date_time1<-paste(active_power$Date,active_power$Time)
test1<-strptime(date_time1,format="%d/%m/%Y %H:%M:%S")
plot(test1,Active_power,type="l")
