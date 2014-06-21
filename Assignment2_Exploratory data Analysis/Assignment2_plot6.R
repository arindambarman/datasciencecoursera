
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
scc_mobile<- SCC$SCC[grep("Mobile*", SCC$EI.Sector, ignore.case=FALSE)]
nei_motor1<-subset(NEI, NEI$SCC %in% scc_mobile &  NEI$fips=="24510" | NEI$SCC %in% scc_mobile & NEI$fips=="06037")
Emission_motor<-aggregate(nei_motor1$Emissions, by=list(nei_motor1$fips,nei_motor1$year),FUN=sum)
qplot(Emission_motor$Group.2,Emission_motor$x, data=Emission_motor,color=Group.1,geom=c("point","smooth"),xlab="Year",ylab="Emission")
