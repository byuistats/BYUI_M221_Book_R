# MATH 221D
# Lesson 3
# Sample R code
# https://byuistats.github.io/BYUI_M221_Book_R


# Install required packages for the course ----------------
# (You only need to run this once!)
install.packages("mosaic")
library(mosaic)

# Tuberculosis Example ----------------------------------------------
# Load the tuberculosis data:
#   https://byuistats.github.io/M221R/data/tuberculosis.xlsx

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(tuberculosis$costs)    # Mean, Median
sort(table(tuberculosis$costs)) # Mode

# Graphical Summaries -------------------------------------
hist(tuberculosis$costs)