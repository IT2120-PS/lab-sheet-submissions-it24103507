#Exercise 01

#distribution of X
n <- 50 #n= number of students
p <- 0.85 #p= probability of passing

#at least 47 students passed the test
# X >= 47, so 1 - p(X <= 46), and the distribution is binomial
1 - pbinom(46, size = n, prob = p)


#Exercise 02

#random variable for the problem X= num of calls per hour

#distribution of X
lambda = 12

#exatly 15 calls received in an hour
# X = 15, and the distribution is poisson
dpois(15, lambda = 12 )