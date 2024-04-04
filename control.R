## Az első csv adataival a havira.R szkriptből
homcntr.xts <- apply.monthly(homcsap193060.xts["1989/2019","ta"], mean)
csapcntr.xts <- apply.monthly(homcsap193060.xts["1989/2019","rr"], sum)

csapatlagcntr <- numeric(12)
for(honap in 1:12){
 csapatlagcntr[honap] <- mean(as.vector(coredata(csapcntr.xts[seq(from = honap, by = 12, length = 30)])))
}

round(csapatlagcntr,2)
sum(csapatlagcntr)

idocntr <- seq(as.Date("2022-01-15"),as.Date("2022-12-15"), by = "month")
idoori <- seq(as.Date("1980-01-15"),as.Date("1980-12-15"), by = "month")

csapatlag.xts <- xts(csapatlag, idoori)
csapatlagcntr.xts <- xts(csapatlagcntr, idocntr)

par(mfrow=c(2,1))
barplot(csapatlag.xts)
barplot(csapatlagcntr.xts)
