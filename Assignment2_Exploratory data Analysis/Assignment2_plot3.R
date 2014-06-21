
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
pm25_yr<-aggregate(NEI$Emissions, by=list(NEI$year),FUN=sum)
pm25_yr<-aggregate(NEI$Emissions, by=list(NEI$year),FUN=sum)
plot(pm25_yr$Group.1,pm25_yr$x,type="l")
qplot(pm25_city2$Group.3,pm25_city2$x, data=pm25_city2,color=Group.2,geom=c("point","smooth"),xlab="Year",ylab="Emission")