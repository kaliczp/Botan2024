## Az első csv adataival a havira.R szkriptből
homcntr.xts <- apply.monthly(homcsap193060.xts["1989/2019","ta"], mean)
csapcntr.xts <- apply.monthly(homcsap193060.xts["1989/2019","rr"], sum)

csapatlagcntr <- numeric(12)
for(honap in 1:12){
 csapatlagcntr[honap] <- mean(as.vector(coredata(csapcntr.xts[seq(from = honap, by = 12, length = 30)])))
}

round(csapatlagcntr,2)
sum(csapatlagcntr)

idouj <- seq(as.Date("2019-01-15"),as.Date("2019-12-15"), by = "month")

csapatlaguj.xts <- xts(cbind(Botan = csapatlag, Kuruc = csapatlagcntr), idouj)
csapatlagcntr.xts <- xts(csapatlagcntr, idocntr)
s
## Compare recent
par(mfrow=c(2,1))
barplot(csapatlaguj.xts[,"Botan"], main = "Botan")
barplot(csapatlaguj.xts[,"Kuruc"], main = "Kuruc")


## Első időszakra futtatás után
idoori <- seq(as.Date("1960-01-15"),as.Date("1960-12-15"), by = "month")
csapatlagold.xts <- xts(csapatlag, idoori)
dev.new()
par(mfrow=c(2,1))
barplot(csapatlagold.xts, main = "Botanold")
barplot(csapatlaguj.xts[,"Botan"], main = "Botanuj")

