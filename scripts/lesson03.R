# MATH 221D
# Lesson 3
# Sample R code
# https://byuistats.github.io/BYUI_M221_Book_R


# Install required packages for the course ----------------
# (You only need to run this once!)
install.packages("mosaic")
library(mosaic)


# Load data for this lesson
load(url("https://byuistats.github.io/M221R/data/L03.RData"))

# Numerical Summaries -------------------------------------
mean(tuberculosis$costs)
median(tuberculosis$costs)
sort(table(tuberculosis$costs))

library(mosaic)
favstats(tuberculosis$costs)

# Graphical Summaries -------------------------------------
hist(tuberculosis$costs)

# Surgery Lawsuits (Wrong-Site Wrong-Patient) -----------------------

# Compute the mean of the wrong_site data
mean(surgery_lawsuits$wrong_site)

# Compute the median of the wrong_site data
median(surgery_lawsuits$wrong_site)

# Find the mode of the wrong_site data 
# (Note: this is not very helpful)
table(surgery_lawsuits$wrong_site)

# Find the mode of the wrong_site data (Sorted in ascending order)
# Notice the two most-frequently occurring value is 0, with 50 instances
sort(table(surgery_lawsuits$wrong_site))

# Basic histogram of the wrong_site data
hist(surgery_lawsuits$wrong_site)
