# ===================================================================
# Lesson 14: Inference using ANOVA (Several Independent Samples)
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Hypothesis Tests (Long Data) ======================================



# Gratitude Example ---------------------------------------
# Load the gratitude data:
library(rio)
gratitude <- import("https://byuistats.github.io/M221R/Data/gratitude.xlsx")

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(happiness ~ treatment, data = gratitude)

# Checking ANOVA requirements -----------------------------
var(happiness ~ treatment, data = gratitude)
max( var(happiness ~ treatment, data = gratitude) ) # Max variance
min( var(happiness ~ treatment, data = gratitude) ) # Min variance

# Graphical Summaries -------------------------------------
boxplot(happiness ~ treatment, data = gratitude)

# Hypothesis Test -----------------------------------------
aov_output <- aov(happiness ~ treatment, data = gratitude)
summary(aov_output)



# Hypothesis Tests (Wide Data) ======================================



# Soccer Shoes Example ------------------------------------
# Load the soccer_shoes data:
library(rio)
soccer_shoes <- import("https://byuistats.github.io/M221R/Data/soccer_shoes.xlsx")

# Convert Data from Wide to Long Format -------------------
soccer <- stack( Filter(is.numeric, soccer_shoes) )

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(values ~ ind, data = soccer)

# Checking ANOVA requirements -----------------------------
var(values ~ ind, data = soccer)
max( var(values ~ ind, data = soccer) ) # Max variance
min( var(values ~ ind, data = soccer) ) # Min variance

# Graphical Summaries -------------------------------------
boxplot(values ~ ind, data = soccer)

# Hypothesis Test -----------------------------------------
aov_output <- aov(values ~ ind, data = soccer)
summary(aov_output)