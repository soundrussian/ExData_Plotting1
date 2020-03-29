source("./prepareData.R")

plot(data$DateTime, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts")
dev.copy(png, "./output/plot2.png")
dev.off()