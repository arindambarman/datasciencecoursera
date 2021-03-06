download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip",destfile="C:/Users/arindam/Documents/Data Science/R Programming/Exploratory Research/Assignment.zip")
unzip( "Assignment.zip")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
pm25_yr<-aggregate(NEI$Emissions, by=list(NEI$year),FUN=sum)
pm25_yr<-aggregate(NEI$Emissions, by=list(NEI$year),FUN=sum)
plot(pm25_yr$Group.1,pm25_yr$x,type="l",xlab="Year",ylab="Emissions")