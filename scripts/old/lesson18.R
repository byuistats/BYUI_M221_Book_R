# ===================================================================
# Lesson 18: Inference for Two Proportions
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Hypothesis Tests ==================================================



# PTC Tasting (Men Vs. Women) Example ---------------------
# Enter the data into the two.prop.test() function

# Load the function and conduct the test
source("https://byuistats.github.io/M221R/scripts/functions.R")
two.prop.test(x1 = 51, n1 = 66, x2 = 38, n2 = 52, alternative = "two.sided")



# Mortality Rates by Day of Admission Example -------------
# Enter the data into the two.prop.test() function

# Load the function and conduct the test
two.prop.test(x1 = 1476, n1 = 4145, x2 = 553, n2 = 1309, alternative = "two.sided")



# Confidence Intervals ==============================================



# Managing Fox Populations Example ------------------------
# Enter the data into the two.prop.test() function

# Load the function and conduct the test
source("https://byuistats.github.io/M221R/scripts/functions.R")
two.prop.test(x1 = 268, n1 = 1359, x2 = 576, n2 = 950, conf.level = 0.95)