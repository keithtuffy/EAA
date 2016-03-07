#data
cpu <- c(55,56,98,100,15,12,33,45,32,67,82,19,25)

cpubusy <- 100-cpu

#get pic
#png("busy.png")


#plot data
plot(cpubusy,type="b",main="CPU busy time", xlab="Time", ylab="% busy")

#dev.off()

print(summary(cpu))



# linear model used to predict future trends
#independent variable
x<-c(rep(1:13))

# linear model
#dependent variable
y<- lm(cpubusy ~ x)

#add to existing plot
abline(y, col="red")
