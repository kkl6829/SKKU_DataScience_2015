# Problem Set #2
# Jevin West
# Date:  5/14/2015

#clean variables
rm(list=ls(all=TRUE))




#### Problem Set #1


# Q1 #

# data
pt <- c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,93,101,82,83,74,91,83,98,95,111,99,120,93,84)


# (a) sample mean
pt_M <- mean(pt)  # answer: 92.2


# (b) No, it is a sample of the population and the liklihood is very low for estimating exactly the population mean. 

# (c) standard error of the mean
SE <- sd(pt)/sqrt(length(pt))  # answer: 1.98

# (d) The spread of the sampling distribution of the sample mean.

# (e)  2SE approximation rule
#  pt_M - 2SE < u < pt_M + 2SE   -->    88.2 < u < 96.2
# details
# also t.test(pt) reports 95% confidence interval

# (f)  The interval represents the most plausible values for the population mean.  In roughly 95% of the random samples from the population, the interval will include the true population mean.     


# Q2 #
m <- c(220.1,218.6,229.6,228.8,222.0,224.1,226.5) 
f <- c(223.4,221.5,230.2,224.3,223.8,230.8)

# Ho: the cholesterol levels are the same in males and females (u_dif = 0)
# Ha: the cholesterol levels are not the same (u_dif != 0)

# first, look at data
layout(matrix(2:1, ncol = 1))
hist(m)
hist(f)

# mean and sd (similar means, can't reject null hypothesis, see below for additional details)
mean(m)
mean(f)
sd(m)
sd(f)

# two sample t-test, p-value = 0.54 so can't reject null hypothesis
t.test(m,f)


# 95% CI: -6.4 < u < 3.5 which contains zero so can't reject null hypthesis   


# Q3 #

# (a) This is false.  The p-value says nothing about the size of the effect.

# (b) True.  The null hypothesis was rejected so we can conclude there was some effect.

# (c) False. The probability of committing a Type I error is determined by alpha, which is determined beforehand.  In this case, alpha was set to 0.05.

# (d) False, the probability of committing a Type II error depended on the effect size, which isn't known in this example. You can estimate the power of study better when sample size is large, the true discrepancy from the null hypothesis is large and there is low variability in an experiment.

# (e) True


# Q4 # Mann-Whitney does not assume a normal distribution

# data
pA <- c(248,236,269,254,249,251,260,245,239,255)
pB <- c(380,391,377,392,398,374)
pA2 <- 1.5*pA 

# first, look at the data
layout(matrix(2:1, ncol = 1))
hist(pA2,xlim=c(350,410))
hist(pB,xlim=c(350,410))


# Ho = pA cells have volume 1.5*pB
# Ha = pA cells don't have volume 1.5*pB

# answer: p-value = 0.15 so can't reject Ho


# Q5 # What is the difference between standard deviation and standard error of the mean?

# The standard deviation is a description of the dispersion of the sample
# - tends to the population means as n increases
# - sd sum(x1-x)/n

# The standard error of the mean tells us how confident I can be that the sample mean is close to the population mean
# - tends to zero as n increases
# - sd/n



