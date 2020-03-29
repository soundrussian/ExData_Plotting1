source("./prepareData.R")

hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "#ff2500")
dev.copy(png, "./output/plot1.png")
dev.off()