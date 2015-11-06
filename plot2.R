#The code to load data is placed to source file "get_and_explore.R"
#Please check if required: https://github.com/YaoLen/ExData_Plotting1/blob/master/get_and_explore.R

source("get_and_explore.R")

#Fig2
png("plot2.png") #open file device
with(selected_data,
     plot(datetime,
          selected_data$Global_active_power, 
          type="l", 
          ylab="Global Active Power", 
          xlab="")
)
dev.off() #close file device
