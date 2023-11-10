# 2520 is the smallest number that can be divided by each of the numbers 
# from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible 
# (divisible with no remainder) by all of the numbers from 1 to 20?

n <- 2520
x <- FALSE

while (x == FALSE) {
  if (all(n %% 1:20 == 0)) {
    x <- TRUE
    return(n)
  }
  else {
    x <- all(n %% 1:20 == 0)
    n <- n + 1
  }
}

