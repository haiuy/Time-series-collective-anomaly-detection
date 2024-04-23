install.packages('anomaly')
library(anomaly)
#Normalization
dataBTC$Normalized.Close <- (dataBTC$Close - mean(dataBTC$Close)) / sd(dataBTC$Close)
#CAPA
res<-capa(dataBTC$Normalized.Close,type="robustmean",min_seg_len=2, max_seg_len = 14)
collective_anomalies(res)
plot(res)


