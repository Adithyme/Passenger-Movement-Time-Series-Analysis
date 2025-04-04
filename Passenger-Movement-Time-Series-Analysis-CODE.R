# Load necessary library
library(stats)

# Load the dataset
data <- read.csv("C:\\Users\\adith\\OneDrive\\Desktop\\tosubmit\\data set for da 3 regree thoery.csv")

# Create a time series object using 'Pax From Origin'
time_series_data <- ts(data$Pax.From.Origin, frequency = 12, start = c(min(data$Year), min(data$Month)))

# Decompose the time series using STL
decomposed_data <- stl(time_series_data, s.window = "periodic")

# Print the decomposed components
print(decomposed_data)

# Plot the original and decomposed components
plot(decomposed_data)

# Extract the trend component
trend_component <- decomposed_data$time.series[, "trend"]

# Plot the trend component
plot(trend_component, type = 'l', col = 'blue', main = "Trend Component of Time Series", xlab = "Time", ylab = "Trend")

# Fit a linear model to the trend data
trend_model <- lm(trend_component ~ time(trend_component))

# Summary of the linear model
summary(trend_model)

# Adding the trend line to the plot
abline(trend_model, col = "red")

# Replot the trend with the fitted line
plot(trend_component, type = 'l', col = 'blue', main = "Trend Component with Fitted Line", xlab = "Time", ylab = "Trend")
abline(trend_model, col = "red", lwd = 2)