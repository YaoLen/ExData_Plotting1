#The code to load data is placed to source file "get_and_explore.R"
source("get_and_explore.R")

#Print fig1
png("plot1.png") #open file device
with(selected_data,
     hist(Global_active_power, 
          col="red", 
          ylim=c(0,1200), 
          main = "Global Active Power", 
          xlab = "Global Active Power (kilowatts)"))
dev.off() #close file device