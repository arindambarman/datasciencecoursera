rawfile <- file("C:/Users/arindam/Documents/Data Science/R Programming/household_power_consumption.txt", "r")
cat(grep("(^Date)|(^[1|2]/2/2007)",readLines(rawfile), value=TRUE), sep="\n", file="filtered.txt")
close(rawfile)

active_power<-read.csv(("C:/Users/arindam/Documents/Data Science/R Programming/filtered.txt"),sep=";")
Active_power=active_power$Global_active_power
hist(Active_power, breaks=11,col="red")