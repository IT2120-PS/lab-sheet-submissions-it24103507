setwd("C:\\Users\\USER\\Downloads\\IT24103507")

data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

#question 01
popmean <- mean(Weight.kg.)
popmean

popstd <-sd(Weight.kg.)
popstd

#question 02
Samples <- c()
n <- c()

for(i in 1:25) {
  s <- sample(Weight.kg., 6, replace= TRUE) #here, sample is a function.
  Samples <- cbind(Samples, s) #here, Samples is the name we gave the variable.
  n <- c(n, paste('S', i))
}
Samples
n
colnames(Samples)=n

samplemean <- apply(Samples, 2, mean)
samplemean

samplestd <- apply(Samples, 2, sd)
samplestd

#question 03
meanofsamples <- mean(samplemean)
meanofsamples

stdofsamples <- sd(samplestd)
stdofsamples

#compare true population mean and the one we got practically
popmean
meanofsamples

#compare true std with the one we got practically
popstd
stdofsamples
