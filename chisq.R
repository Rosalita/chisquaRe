# example chi-square analysis

# sample table showing number of drinkers and abstainers grouped by crimes committed

tbl <- matrix(c(50,43,88,62,155,110,379,300,18,14,63,144),ncol=2,byrow=TRUE)
colnames(tbl) <- c("drinker","abstainer")
rownames(tbl) <- c("arson","rape","violence", "stealing", "counterfeiting", "fraud")

# in the table there are two variables
# x = whether a person is a drinker or an abstainers
# y = a crime the person has committed
# based on the total numbers of drinkers and abstainers it is possible to calc expected values for each crime
# the expected value for any cell is row total * column total / grand total
# chi squared is about comparing observed values to expected values
# chi squared = the sum of :-  (observed - expected) 2
#                               ------------------
#                                   expected

# to test whether there is an association between drinking and criminal activities

# turn off scientific notation
options(scipen=999)

# options(scipen=0) to turn it back on again
chisq.test(tbl)

# output
# Pearson's Chi-squared test
# data:  tbl
# X-squared = 49.731, df = 5, p-value = 0.000000001573

# this means the null hypothesis is rejected
# the distribution of drinkers and abstainers differs across populations of different criminals


