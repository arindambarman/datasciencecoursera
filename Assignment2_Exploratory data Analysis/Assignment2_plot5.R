
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
scc_mobile<- SCC$SCC[grep("Mobile*", SCC$EI.Sector, ignore.case=FALSE)]
nei_motor<-subset(NEI, NEI$SCC %in% scc_mobile &  NEI$fips=="24510")
Emission_motor<-aggregate(nei_motor$Emissions, by=list(nei_motor$year),FUN=sum)
plot(Emission_motor$Group.1, Emission_motor$x,type="l",xlab="Year",ylab="Motor Emission")
