Plot4 <- function() 
{
  
  data<-read.table("hcp.txt",sep=";",skip=66637,nrows=2880,col.names=c("Date","Time","Global_active_power","Global_reactive_powe","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  x <- paste(data$Date, data$Time)
  d<-strptime(x,format= "%d/%m/%Y %H:%M:%S")
  par(mfrow=c(2,2))
  plot(d,data$Global_active_power,type="l",ylab="Global Active Power(kilowatts)",xlab="")
  plot(d,data$Voltage,type="l",ylab="Voltage",xlab="datetime")
  plot(d,data$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
  lines(d,data$Sub_metering_2,type="l",col="red")
  lines(d,data$Sub_metering_3,type="l",col="blue")
  legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.4)
  plot(d,data$Global_reactive_powe,type="l",ylab="Global_reactive_powe",xlab="datetime")
  
  
}


