# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.


n <- 11
primes <- c(2, 3, 5, 7)
while (n < 2000000) {
  
  if (any(n %% 2:sqrt(n) == 0)) {
    n = n + 1
  }
  else {
    primes <- append(primes, n)
    n = n + 1
  }
}

sum(primes)