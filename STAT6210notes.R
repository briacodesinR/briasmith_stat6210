#### Notes for STAT6210 ####

##### August 20 Notes #####

# General naming convention

# dxxx = density -> x are substitutions for syntax distributions (xxx = norm)
# pxxx = cumulative probability
# qxxx = quantile
# rxxx = random number generation (generates samples from a normal distribution)

pnorm(
  q=90,
  mean=70,
  sd=15,
  lower.tail=FALSE
)

# R uses positional arguments, so any value within a specific position of an equation will function as that argument. For example, the first argument in pnorm is q, so if you wanted to use the default mean and sd values, you could just write pnorm(90) and it would return the same value as above.
# It is advised against because it can be confusing to read and understand, especially if you are not familiar with the function. It is better to use named arguments for clarity.

# ?(function name) will provide an explanation of how a function works in the help console (example -> ?pnorm)

?pnorm

# dnorm (x = vector of quantities, mean = , sd = ) -> spits out the probability density function for each value in x
# qnorm(p = probability of receiving this value, mean = , sd = ) -> spits out number that would generate p


set.seed(123) # set.seed tells you where to start from (in terms of values in the "dataset")
rnorm(n=10, mean=70, sd=15)

# rnorm (n=number of observations I want to generate, mean = , sd = ) -> spits out the observations observed (n)
# setting the seed before running the rnorm function keeps the generated values the same, but if you change the seed, the generated values will be different. This is useful for reproducibility of results.


### Summary Statistics

x <- c(12,15,18,20,22,25,30) # this is a column vector

mean(x)
median(x)
var(x)
sd(x)
quantile(x, probs = .8) # gives a range of quantiles by default, but adding probs spits out the value at the 80th quantile
IQR(x)
min(x)
max(x)
range(x)
summary(x)

### Factor Variables

colors <- as.factor(
  c(
    rep("yellow", 20), # repeat(yellow, 20 times)
    rep("green", 10),
    rep("blue", 50)
  )
)
table(colors) # creates a table of counted values
prop.table(table(colors)) # calculates proportions

### Dataset Summary

head(iris) # shows the first 6 rows of the dataset)
summary(iris) # gives summary statistics for each column in the dataset
dim(iris) # gives the dimensions of the dataset (rows, column)
names(iris) # gives the names of the columns in the dataset

