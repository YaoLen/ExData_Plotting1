#The code to load data is placed to source file "get_and_explore.R"
#Please check if required: https://github.com/YaoLen/ExData_Plotting1/blob/master/get_and_explore.R

source("get_and_explore.R")

#Fig3
png("plot3.png") #open file device
with(selected_data,
     plot(datetime,
          Sub_metering_1, 
          type="l", 
          ylab="Energy sub metering", 
          xlab="")
)
with(selected_data, points(datetime,Sub_metering_2, col="red", type="l"))
with(selected_data, points(datetime,Sub_metering_3, col="blue", type="l"))
legend("topright", lty=c(1,1), col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()