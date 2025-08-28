setwd("C:\\Users\\USER\\Downloads\\IT24103507_LAB_05")

#import the dataset
Delivery_times <- read.table("Exercise - Lab 05.txt", header = TRUE)
Delivery_times

#rename the column nam for easire access
names(Delivery_times) <- c("X1")
attach(Delivery_times)

#making a histogram
histogram <- hist(X1, main = "histogram for delivery times(in minutes)", breaks = seq(20, 70, length = 10), right = TRUE)

#most of the delivery times are grouped around the middle range.
#there are fewer deliveries at the low(20) and high(70)ends.
#the delivery times are spread across a wide range, but mostly concentrated in one interval.

#assign class limits, frequencies and midpoints to variables
break_values <- round(histogram$breaks)
break_values

freq_values <- histogram$counts
freq_values


#cumulative frequency
cum_freq_values <- cumsum(freq_values)
cum_freq_values

new <- c()

for (i in 1:length(break_values)) {
  if(i==1) {
    new[i] = 0
  } else {
    new[i] = cum_freq_values[i-1]
  }
}
plot(break_values, new, type = 'o', main = "cumulative frequency polygon for delivery times",
     xlab = "delivery times(in mins)", ylab= "cumulative frequency", ylim = c(0,max(cum_freq_values)))