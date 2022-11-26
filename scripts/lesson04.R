# ===================================================================
# Lesson 4: Describing Quantitative Data (Spread)
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Surgery Lawsuits Example --------------------------------
# Load the surgery_lawsuits data:
library(rio)
surgery_lawsuits <- import("https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx")

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(surgery_lawsuits$wrong_site)
quantile(surgery_lawsuits$wrong_site, 0.25) # 25th percentile

# Graphical Summaries -------------------------------------
hist(surgery_lawsuits$wrong_site)
boxplot(surgery_lawsuits$wrong_site, horizontal = TRUE)