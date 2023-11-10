# A palindromic number reads the same both ways. The largest palindrome made 
# from the product of two 2-digit numbers is 9009 = 91 * 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# create matrix of all options
x <- 100:999 
names(x) <- x
mat <- x %o% x

# get vector of palindromes
palindromes <- c()
for (r in 1:nrow(mat)) {
  for (c in 1:ncol(mat)) {
    elements <- unlist(strsplit(as.character(mat[r,c]), split = ""))
    if (all(rev(elements) == elements)) {
      palindromes <- append(palindromes, mat[r,c])
    }
  }
}

max(palindromes)