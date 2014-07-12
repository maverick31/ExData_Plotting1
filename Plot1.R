Plot1 <- function() 
{
  
data<-read.table("hcp.txt",sep=";",skip=66637,nrows=2880,col.names=c("Date","Time","Global_active_power","Global_reactive_powe","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
h<-hist(data$Global_active_power,col="red",xlab="Global active power",main="Global active power")


}