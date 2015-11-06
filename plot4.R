#The code to load data is placed to source file "get_and_explore.R"
#Please check if required: https://github.com/YaoLen/ExData_Plotting1/blob/master/get_and_explore.R

source("get_and_explore.R")

#Draw Figure 4
png("plot4.png") #open file device
par(mfrow=c(2,2)) #set output to 4 graphs

#Repeat Fig2
with(selected_data,
     plot(datetime,
          selected_data$Global_active_power, 
          type="l", 
          ylab="Global Active Power", 
          xlab="")
)

#Draw Voltage
with(selected_data,
     plot(datetime,
          Voltage, 
          type="l")
)


#Repeat Fig3
with(selected_data,
     plot(datetime,
          Sub_metering_1, 
          type="l", 
          ylab="Energy sub metering", 
          xlab="")
)
with(selected_data, points(datetime,Sub_metering_2, col="red", type="l"))
with(selected_data, points(datetime,Sub_metering_3, col="blue", type="l"))
legend("topright", lty=c(1,1), col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty="n")


#Draw Reactive
with(selected_data,
     plot(datetime,
          Global_reactive_power, 
          type="l")
)
dev.off()
