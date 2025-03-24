library(readxl)
## Import from excel
Botanraw <- as.data.frame(read_excel("Botanikus kert 1980-2019.xlsx"))[,c(1:4,8)]
