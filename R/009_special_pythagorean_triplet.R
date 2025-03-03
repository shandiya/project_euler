# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# a needs to be smaller than 500 for a + b + c = 1000 to be true

 for (i in 4:500) {
   for (j in 4:500) {
     x <- i^2 + j^2 
     if (sqrt(x) %% 1 == 0 && i + j + sqrt(x) == 1000) {
       print(c(i, j, sqrt(x)))
     }  
   }
 }

200*375*425
