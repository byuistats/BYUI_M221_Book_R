# MATH 221D
# Lesson 3
# Sample R code
# https://byuistats.github.io/BYUI_M221_Book_R

# Read in tuberculosis data
mydata <- c(15100, 19000, 4800, 6500, 14900, 600, 23500, 11500, 12900, 32200)

# -----------------------------------------
# Histograms  
# -----------------------------------------

# Basic histogram of the tuberculosis data
hist(mydata)

# Nicer histogram of the tuberculosis data
hist(mydata, 
     col = "skyblue", 
     main = "Histogram of Costs to Treat Tuberculosis", 
     xlab = "Cost in Dollars", 
     ylab = "Number of Individuals")


# -----------------------------------------
# Numerical Summaries: Measures of center
# -----------------------------------------

# Compute the mean
mean(mydata)

# Compute the median
median(mydata)

# Find the mode
table(mydata)