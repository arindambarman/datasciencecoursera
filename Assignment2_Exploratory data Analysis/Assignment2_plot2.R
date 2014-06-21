NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
pm25_city<-aggregate(NEI$Emissions, by=list(NEI$fips=="24510", NEI$year),FUN=sum)
pm25_bal<-subset(pm25_city, Group.1=="TRUE")
plot(pm25_bal$Group.2, pm25_bal$x,type="l",xlab="Year",ylab="Emissions_Baltimore")


