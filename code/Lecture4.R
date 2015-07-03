# SKKU ISS 2015, Lecture 4
# Objective: plotting open government data

# Jevin West
# Date:  7/2/2015

#clean variables
rm(list=ls(all=TRUE))

# read in data
P <- read.csv("/Users/jevinwest/Documents/Teaching/SKKU/Data/UNdata_precipitation.csv")

# (1) Compare the precipitation from 1999 to 2005.  Are they different?

y1999 <- P[P$Year==1999,]

y2005 <- P[P$Year==2005,]

hist(y1999$Value)

t.test(log10(y1999$Value),log10(y2005$Value))

# (2) Precipitation for all countries over time.

# writing a function


# example function for answer #2
# calculate mean precipitation from (P) for a given year (y)
mean_yr <- function(P,y) {
  
  s = 0
  k = 0
  for (i in 1:length(P$Year)) {
    if (P$Year[i] == y) {
      s = s + P$Value[i]
      k = k + 1
    }
  }
  s = s/k
  return (s)
  
}

# get unique years in data.frame
yrs <- sort(unique(P$Year))

# calculate average precipitation for each year
m <- mat.or.vec(length(yrs),1)
for (i in 1:length(yrs)) {
  m[i] <- mean_yr(P,yrs[i])
}

# plot precipitation for each year
plot(yrs,m)


# Boxplot the same figure 






