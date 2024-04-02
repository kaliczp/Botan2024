homatlag <- numeric(12)
for(honap in 1:12){
 homatlag[honap] <- mean(as.vector(coredata(hom.xts[seq(from = honap, by = 12, length = 30)])))
}

round(homatlag,2)

csapatlag <- numeric(12)
for(honap in 1:12){
 csapatlag[honap] <- mean(as.vector(coredata(csap.xts[seq(from = honap, by = 12, length = 30)])))
}

round(csapatlag,2)
sum(csapatlag)
