homcsap193060=read.csv2("1980 előtti adatok.csv")
library(xts)
ido <- seq(as.Date("1901-01-01"), as.Date("2022-12-31"), by="1 days")
homcsap193060.xts <- xts(homcsap193060[,4:5],ido)
plot(homcsap193060.xts["1930/1960","ta"])
hom.xts <- apply.monthly(homcsap193060.xts["1930/1960","ta"], mean)
csap.xts <- apply.monthly(homcsap193060.xts["1930/1960","rr"], sum)

library(xlsx)
read.xlsx("Teljes Botankert 1980-2023.xlsx", 1)

homcsap19892019=read.table("TeljesBotankert.csv", skip = 1, sep = ";", dec = ",")

TeljBot <- scan("TeljesBotankert.csv", what = character(), sep = ";")
TeljBotMat <- matrix(TeljBot[-(1:5)], ncol = 5, byrow=TRUE )

homTB <- as.numeric(TeljBotMat[,4])
csapTB <- as.numeric(TeljBotMat[,5])

which(is.na(csapTB))
TeljBotMat[which(is.na(csapTB)), 5]

homcsap19892019=read.csv2("TeljesBotankert.csv")
library(xts)
ido <- seq(as.Date("1981-02-18"), as.Date("2023-07-31"), by="1 days")
homcsap19892019.xts <- xts(homcsap19892019[,4:5],ido)
plot(homcsap19892019.xts["1989/2019","atlag"])
hom.xts <- apply.monthly(homcsap19892019.xts["1989/2019","ta"], mean)
csap.xts <- apply.monthly(homcsap19892019.xts["1989/2019","rr"], sum)

