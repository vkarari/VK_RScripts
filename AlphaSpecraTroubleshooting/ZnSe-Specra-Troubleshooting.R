setwd("E:/ALPHA/Flat_tables")
dt<-read.csv("All_ZnSe_flat_table.csv",head=T,sep=",")

head(dt[,1:7])
colnames(dt[,1:15])
dim(dt)

plot(dt[,109]) 
n<-which(dt[,109]<0.5)
plot(as.numeric(dt[20,]))

dtt<-dt[-n,]

plot(dtt[,109])

dt[n,1]









plot(as.numeric(dtt))

dtt<-dt[-n,]
dim(dtt)
plot(as.numeric(dtt[,1400]))

h<-which(dtt[,1400]> 0.15)
dt3<-dtt[-h,]
dim(dt3)
plot(as.numeric(dt3[,1400]))

k<-which(dt3[,1400]<0.045)
dt4<-dt3[-k,]
dim(dt4)
plot(as.numeric(dt4[,1400]))

cm<-dt4[,-c(1:6)]
colnames(cm)<-colnames(dt4[,-c(1:6)])
head(cm[,1:5])
avcm<-transform(colMeans(cm,na.rm=T))
head(avcm)

wn<-substr(colnames(cm),2,10)
plot(wn,as.numeric(avcm[,1]))

avcm<-t(avcm)
ldc<-dt[2,][,c(1,3:4)]
avcm<-cbind(ldc,avcm,deparse.level = 0)
avcm[,1:7]
write.csv(avcm,"Averaged_white sand raw mir.csv",row.names=F)