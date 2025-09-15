setwd("C:\\Users\\USER\\Downloads\\IT24103507_PS_LAB_07")

#exercise 01
#random variable X follows a uniform distribution with a=0 & b=40
punif(25, min = 0, max = 40) - punif(10, min = 0, max = 40)

#exercise 02
#random variable X has exponential distribution with lambda= 0.334
#P(X <= 2)
pexp(2, rate = 0.334, lower.tail = TRUE)

#exercise 03
#mean = 100, s.d = 15
#i) p( IQ > 130), so 1 - p(IQ <= 130)
1 - pnorm(130, mean = 100, sd = 15, lower.tail = TRUE)
#ii) 95th percentile, so 95% = 0.95
qnorm(0.95, mean = 100, sd = 15, lower.tail = FALSE)