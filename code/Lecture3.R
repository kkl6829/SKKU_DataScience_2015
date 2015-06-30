# SKKU ISS 2015, Lecture 3
# Objective: learning to use R (working with data)

# Jevin West
# Date:  6/30/2015

#clean variables
rm(list=ls(all=TRUE))



## Pollution Data Example ##

# read in data
pollution <- read.csv("/Users/jevinwest/Documents/Teaching/SKKU/Data/Pollution.csv")

# get the population mean
pop_mean <- mean(Pollution$POP)

## functions to explore
# - mean, variance and standard deviation
# - class, object type, ls(), x <-95, math
# - vectors, length of vectors
# - sequences, x<- 1:10
# - library, update.packages()
# - plot (label axis, change plot points)
# - head
# - pairs
# - lm
# - abline
# - hist



## writing a function

myfunction <- function(x) {
  
  y<- x + 5
  
  return (y)
}

y <- myfunction(10)


## Network Data Set ##

# load igraph library
library(igraph)

# build example network
A <- mat.or.vec(10,10)

A[1,2] = 1
A[1,3] = 1
A[1,10] = 1
A[2,1] = 1
A[2,3] = 1
A[3,1] = 1
A[3,2] = 1
A[4,5] = 1
A[4,6] = 1
A[4,10] = 1
A[5,4] = 1
A[5,6] = 1
A[6,4] = 1
A[6,5] = 1
A[7,8] = 1
A[7,9] = 1
A[7,10] = 1
A[8,7] = 1
A[8,9] = 1
A[9,7] = 1
A[9,8] = 1
A[10,1] = 1
A[10,4] = 1
A[10,7] = 1

# import into igraph
Ag <- graph.adjacency(A, mode=c("undirected"), weighted=NULL, diag=TRUE,
            add.colnames=NULL, add.rownames=NA)


## functions to explore
# - degree centrality, closeness centrality, betweeness centrality, page.rank
# - plot, manipulate color
# - walktrap.community


# cluster
m <- walktrap.community(Ag)
