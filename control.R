## Az első csv adataival a havira.R szkriptből
hom.xts <- apply.monthly(homcsap193060.xts["1989/2019","ta"], mean)
csap.xts <- apply.monthly(homcsap193060.xts["1989/2019","rr"], sum)

csapatlag <- numeric(12)
for(honap in 1:12){
 csapatlag[honap] <- mean(as.vector(coredata(csap.xts[seq(from = honap, by = 12, length = 30)])))
}

round(csapatlag,2)
sum(csapatlag)
