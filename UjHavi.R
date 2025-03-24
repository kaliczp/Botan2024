library(readxl)
## Import from excel
Botanraw <- as.data.frame(read_excel("Botanikus kert 1980-2019.xlsx"))[,c(1:4,8)]
### Convert to xts
library(xts)
## Create data matrix without first column and use Date from first column
Botanxts <- xts(Botanraw[,-1], as.Date(Botanraw[,1]))
