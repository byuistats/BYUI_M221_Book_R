# ===================================================================
# Lesson 8: Unit 1 Review
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Lesson 3: Describing Quantitative Data (Shape & Center) =====================



# Tuberculosis Example ------------------------------------
# Load the data for this lesson
load(url("https://byuistats.github.io/M221R/data/L03.RData"))

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(tuberculosis$costs)

# Graphical Summaries -------------------------------------
hist(tuberculosis$costs)



# Lesson 4: Describing Quantitative Data (Spread) =============================



# Surgery Lawsuits Example --------------------------------
# Load the data for this lesson
load(url("https://byuistats.github.io/M221R/data/L04.RData"))

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(surgery_lawsuits$wrong_site)
quantile(surgery_lawsuits$wrong_site, 0.25) # 25th percentile

# Graphical Summaries -------------------------------------
hist(surgery_lawsuits$wrong_site)
boxplot(surgery_lawsuits$wrong_site, horizontal = TRUE)
