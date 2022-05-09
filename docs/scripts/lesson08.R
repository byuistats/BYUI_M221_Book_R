# ===================================================================
# Lesson 8: Unit 1 Review
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Lesson 3: Describing Quantitative Data (Shape & Center) =====================



# Tuberculosis Example ------------------------------------
# Load the data frames
load(url("https://github.com/byuistats/M221R/raw/main/docs/L03.RData"))

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(tuberculosis$costs)

# Graphical Summaries -------------------------------------
hist(tuberculosis$costs)



# Lesson 4: Describing Quantitative Data (Spread) =============================



# Surgery Lawsuits Example --------------------------------
# Load the data frames
load(url("https://github.com/byuistats/M221R/raw/main/docs/L04.RData"))

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(surgery_lawsuits$wrong_site)
quantile(surgery_lawsuits$wrong_site, 0.25) # 25th percentile

# Graphical Summaries -------------------------------------
hist(surgery_lawsuits$wrong_site)
boxplot(surgery_lawsuits$wrong_site, horizontal = TRUE)
