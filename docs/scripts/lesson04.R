# MATH 221D
# Lesson 4
# Sample R code
# https://byuistats.github.io/BYUI_M221_Book_R



# Surgery Lawsuits Example --------------------------------
# Load the surgery_lawsuits data:
#   https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(surgery_lawsuits$wrong_site)
quantile(surgery_lawsuits$wrong_site, 0.25) # 25th percentile

# Graphical Summaries -------------------------------------
hist(surgery_lawsuits$wrong_site)
boxplot(surgery_lawsuits$wrong_site, horizontal = TRUE)