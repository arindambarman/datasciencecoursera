rawfile <- file("C:/Users/arindam/Documents/Data Science/R Programming/household_power_consumption.txt", "r")
cat(grep("(^Date)|(^[1|2]/2/2007)",readLines(rawfile), value=TRUE), sep="\n", file="filtered.txt")
close(rawfile)
active_power<-read.csv(("C:/Users/arindam/Documents/Data Science/R Programming/filtered.txt"),sep=";")
Active_power=active_power$Global_active_power
date_time1<-paste(active_power$Date,active_power$Time)
test1<-strptime(date_time1,format="%d/%m/%Y %H:%M:%S")
global_reactive_power=active_power$Global_reactive_power
voltage1=active_power$Voltage
par(mfrow=c(2,2))
 plot(test1,Active_power,type="l")
plot(test1,voltage1,type='l')
plot(test1,submeter1,col="black",type="n")
lines(test1,submeter1,col="black",type="l")
lines(test1,submeter2,type="l",col="red")
lines(test1,submeter3,type="l",col="blue")
legend("topright",legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"))
plot(test1,global_reactive_power,type="l")