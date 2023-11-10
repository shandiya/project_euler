# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see 
# that the 6th prime is 13.
# What is the 10001st prime number?

n <- 13
primes <- c(2, 3, 5, 7, 11)
while (length(primes) <= 10001) {
  
  if (any(n %% 2:sqrt(n) == 0)) {
    n = n + 1
  }
  else {
    primes <- append(primes, n)
    n = n + 1
  }
}

primes[10001]

