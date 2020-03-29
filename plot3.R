source("./prepareData.R")

plot(data$DateTime, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, type = "l", col = "red")
lines(data$DateTime, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), text.width = 50000, lty = c(1, 1, 1), col = c("black", "red", "blue"))
dev.copy(png, "./output/plot3.png")
dev.off()