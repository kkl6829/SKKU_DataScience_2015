# lab 7, central limit theorem simulation with dice

# Jevin D. West
# University of Washington Information School
# July 7, 2015


# This lab explores the following topics: frequency distributions, probability distributions, plotting in R, classic statistical tests (e.g., t-tests, chi-squared tests, etc)


#clean variables
rm(list=ls(all=TRUE))


####  Central Limit Theorm Simulation  ####

# uniform distribution

hist(runif(10000)*10,main="")
means <- numeric(10000)
for (i in 1:10000) {
	means[i] <- mean(runif(5)*10)
}
hist(means,freq=FALSE)
mean(means)
sd(means)
xv <- seq(0,10,0.1)
yv <- dnorm(xv,mean=mean(means),sd=sd(means))
lines(xv,yv)

