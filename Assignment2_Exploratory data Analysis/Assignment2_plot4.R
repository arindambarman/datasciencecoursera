NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
coal_emmi<- SCC$SCC[grep("Comb.*Coal|Coal.*Comb", SCC$Short.Name, ignore.case=FALSE)]
nei_coal<-subset(NEI, NEI$SCC %in% coal_emmi)
Emission_coal<-aggregate(nei_coal$Emissions, by=list(nei_coal$year),FUN=sum)
plot(Emission_coal$Group.1, Emission_coal$x,type="l", xlab="Year",ylab="Coal Emission")
