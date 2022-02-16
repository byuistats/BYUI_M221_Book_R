# ===================================================================
# Lesson 13: Inference for the Difference of Means (Two Independent Samples)
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Hypothesis Tests and Confidence Intervals (Wide Data) =============



# COPD Example --------------------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/copd_rehab.xlsx
# (The "Import Dataset" code was pasted here:)
library(readxl)
url <- "https://byuistats.github.io/M221R/data/copd_rehab.xlsx"
destfile <- "copd_rehab.xlsx"
curl::curl_download(url, destfile)
copd_rehab <- read_excel(destfile)
View(copd_rehab)

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(copd_rehab$community)
favstats(copd_rehab$hospital)

# Graphical Summaries -------------------------------------
boxplot(copd_rehab$community, copd_rehab$hospital)

# Hypothesis Test -----------------------------------------
t.test(copd_rehab$community, copd_rehab$hospital,
       mu = 0,  
       alternative = "two.sided")

# Confidence Interval -------------------------------------
t.test(copd_rehab$community, copd_rehab$hospital, 
       conf.level = 0.95)



# Hypothesis Tests and Confidence Intervals (Long Data) =============



# Reading Practices Example -------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/copd_rehab.xlsx
# (You may want to paste the code here)


# Numerical Summaries -------------------------------------
library(mosaic)
favstats(reading$nights ~ reading$group)

# Graphical Summaries -------------------------------------
boxplot(reading$nights ~ reading$group)

# Hypothesis Test -----------------------------------------
t.test(reading$nights ~ reading$group, 
       mu = 0, 
       alternative = "two.sided")

# Confidence Interval -------------------------------------
t.test(reading$nights ~ reading$group, 
       conf.level = 0.95)


# FIFA Heart Attacks Example ------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/fifa_heart_attacks.xlsx
# (You may want to paste the code here)


# Numerical Summaries -------------------------------------
library(mosaic)
favstats(fifa_heart_attacks$heart_attacks ~ fifa_heart_attacks$time_period)

# Graphical Summaries -------------------------------------
boxplot(fifa_heart_attacks$heart_attacks ~ fifa_heart_attacks$time_period)

# Hypothesis Test (Wide Data) -----------------------------
t.test(fifa_heart_attacks$heart_attacks ~ fifa_heart_attacks$time_period, 
       mu = 0,
       alternative = "two.sided")

# Confidence Interval (Wide Data) -------------------------
t.test(fifa_heart_attacks$heart_attacks ~ fifa_heart_attacks$time_period, 
       conf.level = 0.95)
