# ===================================================================
# Lesson 13: Inference for the Difference of Means (Two Independent Samples)
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Hypothesis Tests and Confidence Intervals (Long Data) =============



# Reading Practices Example -------------------------------
# Load the data for this lesson
load(url("https://byuistats.github.io/M221R/data/L13.RData"))

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(nights ~ group, data = reading)

# Graphical Summaries -------------------------------------
boxplot(nights ~ group, data = reading)

# Hypothesis Test -----------------------------------------
t.test(nights ~ group, data = reading,
       alternative = "two.sided")

# Confidence Interval -------------------------------------
t.test(nights ~ group, data = reading,
       conf.level = 0.95)


# FIFA Heart Attacks Example (Long Data) ------------------
# Load the data for this lesson
load(url("https://byuistats.github.io/M221R/data/L13.RData"))

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(heart_attacks ~ time_period, data = fifa_heart_attacks)

# Graphical Summaries -------------------------------------
boxplot(heart_attacks ~ time_period, data = fifa_heart_attacks)

# Hypothesis Test -----------------------------------------
t.test(heart_attacks ~ time_period, data = fifa_heart_attacks,
       alternative = "less")

# Confidence Interval -------------------------------------
t.test(heart_attacks ~ time_period, data = fifa_heart_attacks,
       conf.level = 0.95)



# Hypothesis Tests and Confidence Intervals (Wide Data) =============



# COPD Example (Wide Data) --------------------------------
# Load the data for this lesson
load(url("https://byuistats.github.io/M221R/data/L13.RData"))

# Convert Data from Wide to Long Format (if necessary) ----
copd <- stack( Filter(is.numeric, copd_rehab) )

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(values ~ ind, data = copd)

# Graphical Summaries -------------------------------------
boxplot(values ~ ind, data = copd)

# Hypothesis Test -----------------------------------------
t.test(values ~ ind, data = copd,
       alternative = "two.sided")

# Confidence Interval -------------------------------------
t.test(values ~ ind, data = copd,
       conf.level = 0.95)