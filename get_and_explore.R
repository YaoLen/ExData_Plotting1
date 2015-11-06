#The code below loads and transforms data if it wasn't done already.
#The code requires 2 libraries to be available: 
#       dplyr -  for manipulating data 
#       lubridate - to convert text to datetime
#If these libraries are not installed yet. The script installs them.

#Check if data is already loaded. If yes - don't load it again.
if(!exists("energy_houshold_data_full"))
{
        #if no - check if original is already unzipped
        if(!file.exists("household_power_consumption.txt")){
                if(!file.exists("consumption.zip")) #check if original file is already downloaded
                {
                        download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
                                      "consumption.zip", 
                                      mode = "wb")
                }
                unzip("consumption.zip")
        }
        energy_houshold_data_full<-read.csv("household_power_consumption.txt",sep=";", na.strings = "?")
}

#Check and install libraries if neccessary
if(!"dplyr" %in% rownames(installed.packages()))
        install.packages("dplyr")
if(!"lubridate" %in% rownames(installed.packages()))
        install.packages("lubridate")


library(dplyr)
library(lubridate)

#Subset data and convert date and time
selected_data<- energy_houshold_data_full %>%
                filter(Date=='1/2/2007'|Date=='2/2/2007') %>%  #Filter out other dates besides 1st and 2nd Feb 2007
                mutate(datetime=parse_date_time(paste(Date, Time),"dmy_hms")) #Convert date and time to datetime