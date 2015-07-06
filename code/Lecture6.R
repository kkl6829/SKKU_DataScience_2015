# dice and height exercise

# Jevin D. West 
# University of Washington Information School
# July 6, 2015

#clean variables
rm(list=ls(all=TRUE))


# This lab explores the following topics: frequency distributions, probability distributions, plotting in R, classic statistical tests (e.g., t-tests)

####  Simulating Dice Rolling   ####

# number of dice rolls
d = 10000

# role two dice 10 times
dice1 <- sample(6,d,replace=TRUE)
dice2 <- sample(6,d,replace=TRUE)

# sum both dice
dice_roll <- dice1 + dice2

# histogram of experiments
hist(dice_roll)
hist(dice_roll,freq=FALSE)

# cummulative distribution plot
plot.ecdf(dice_roll)

# normal distribution
n <- rnorm(1000)






####  Do taller people sit by the window?  ####

# Student's t-Test

# make sure to include your frequency and probability distribution plots for each group

# heights in each group (Group B is by the window)
GroupA <- c(70,64,71,68,67)
GroupB <- c(75,72,68,74,72)
t.test(GroupA,GroupB)












