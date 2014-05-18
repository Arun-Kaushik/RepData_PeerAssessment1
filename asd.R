

### Download the data from https://d396qusza40orc.cloudfront.net/
###    repdata%2Fdata%2Factivity.zip
### and then unzipped

work_dir="C:/Users/KAUSHIK/Desktop/repdata"

# set working directory to your working folder where data is available

setwd(work_dir)

# Read data
Data=read.csv("activity.csv",header=T)
Data$date=as.Date(Data$date)

hist=tapply(Data$steps, Data$date, sum)
mean(hist,na.rm=T)
median(hist,na.rm=T)
hist(his, tcol='red', 
     xlab = 'steps',
     main = 'a')


as=tapply(Data$steps, Data$interval,mean,na.rm=T)

plot(as,type="l",bty="n",xaxt="n")
axis(1,1:57*5,1:57*5,col="green")

which.max(as)

as.numeric(names(which.max(as)))


plot(as,type="l",bty="n",xaxt="n")
axis(1,1:57*5,1:57*5,col="green")
abline(v=104,col="blue")


length(which(is.na(Data$steps)==T))
Data$steps[which(is.na(Data$steps)==T)]=mean(Data$steps,na.rm=T)

