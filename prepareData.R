# Set locale to make sure days are in English
Sys.setlocale(category = "LC_ALL", locale = "english")

# Load and unzip data unless it already has been downloaded
if (! file.exists("./data/household_power_consumption.txt")) {
  if (! file.exists("./data")) { dir.create("./data") }
  fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileUrl, "./data/data.zip", method = "curl")
  unzip("./data/data.zip", exdir = "./data")
  file.remove("./data/data.zip")
}

# Create directory for png files unless it already exists
if (! file.exists("./output")) { dir.create("./output") }

# Just load the required subset of data
nskip <- 66637
nrows <- 69517 - nskip

data <- read.table("./data/household_power_consumption.txt", skip = nskip, nrows = nrows, sep = ";")

# Read colnames separately
colnames(data) <- colnames(read.table("./data/household_power_consumption.txt", nrows = 1, header = TRUE, sep = ";"))

# Add DateTime column
data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")