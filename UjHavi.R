library(readxl)
## Import from excel
Botanraw <- as.data.frame(read_excel("Botanikus kert 1980-2019.xlsx"))[,c(1:4,8)]
### Convert to xts
library(xts)
## Create data matrix without first column and use Date from first column
Botanxts <- xts(Botanraw[,-1], as.Date(Botanraw[,1]))
### Monthly
MinTempB <- apply.monthly(Botanxts[,1], min)
MaxTempB <- apply.monthly(Botanxts[,2], max)
MeanTempB <- apply.monthly(Botanxts[,3], colMeans)
SumCsapB <- apply.monthly(Botanxts[,4], sum)
## Glue data
BotanMonth <- cbind(MinT = MinTempB, MaxT = MaxTempB, MeanT = MeanTempB, SumP = SumCsapB)
