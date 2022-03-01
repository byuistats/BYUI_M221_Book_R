# ===================================================================
# Lesson 17: Inference for One Proportion
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================

# Load R Packages ===================================================
library(readxl)



# Hypothesis Tests ==================================================



# PTC Tasting Example -------------------------------------
# Enter the data into the one.prop.test() function

# Load the function and conduct the test
source("https://byuistats.github.io/M221R/scripts/functions.R")
one.prop.test(x = 89, n = 118, p = 0.70, alternative = "two.sided")

one.prop.test(
  x = 89,                    # Number of successes
  n = 118,                   # Total number of trials (observations)
  p = 0.70,                  # True proportion, given in null hypothesis
  alternative = "two.sided"  # Can be "two.sided", "less", or "greater"
)



# Confidence Intervals ==============================================



# Honesty at Medical School Example -----------------------
# Enter the data into the one.prop.test() function

# Load the function and conduct the test
source("https://byuistats.github.io/M221R/scripts/functions.R")
one.prop.test(x = 249, n = 428, conf.level = 0.95)