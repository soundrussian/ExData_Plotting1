source("./prepareData.R")

par(mfrow = c(2, 2))
with(data, {
  plot(DateTime, Global_active_power, xlab = "", ylab = "Global Active Power", type = "l")
  
  plot(DateTime, Voltage, type = "l", xlab = "datetime")
  
  plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(DateTime, Sub_metering_2, type = "l", col = "red")
  lines(DateTime, Sub_metering_3, type = "l", col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), text.width = 90000, lty = c(1, 1, 1), col = c("black", "red", "blue"), bty = "n")
  
  plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime")
})
dev.copy(png, "./output/plot4.png")
dev.off()





