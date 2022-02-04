# ===================================================================
# Lesson 13: Inference for the Difference of Means (Two Independent Samples)
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================

# Load R Packages ===================================================
library(readxl)
library(mosaic)



# Long Data: One Column of Data, One Column Indicates the Group ===============



# Hypothesis Tests ==================================================



# Reading Practices Example -------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/reading.xlsx
# (The "Import Dataset" code was pasted here:)
library(readxl)
url <- "https://byuistats.github.io/M221R/data/reading.xlsx"
destfile <- "reading.xlsx"
curl::curl_download(url, destfile)
reading <- read_excel(destfile)
View(reading)

# Numerical Summaries -------------------------------------
favstats(reading$nights ~ reading$group)

# Graphical Summaries -------------------------------------
boxplot(reading$nights ~ reading$group)

# Hypothesis Test -----------------------------------------
t.test(reading$nights ~ reading$group, 
       mu = 0, 
       alternative = "two.sided", 
       conf.level = 0.95)



# FIFA World Cup Heart Attack Data ------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/fifa_heart_attacks.xlsx
# (You may want to paste the code here)


# Numerical Summaries -------------------------------------
favstats(fifa_heart_attacks$heart_attacks ~ fifa_heart_attacks$time_period)

# Graphical Summaries -------------------------------------
boxplot(fifa_heart_attacks$heart_attacks ~ fifa_heart_attacks$time_period)

# Hypothesis Test -----------------------------------------
t.test(fifa_heart_attacks$heart_attacks ~ fifa_heart_attacks$time_period, 
       mu = 0,
       alternative = "two.sided",
       conf.level = 0.95)



# Confidence Intervals ==============================================



# Reading Practices Example -------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/reading.xlsx
# (You may want to paste the code here)


# Numerical Summaries -------------------------------------
favstats(reading$nights ~ reading$group)

# Graphical Summaries -------------------------------------
boxplot(reading$nights ~ reading$group)

# Confidence Interval -------------------------------------
t.test(reading$nights ~ reading$group, conf.level = 0.95)



# Wide Data: Data Stored in Separate Columns ========================



# COPD ----------------------------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/copd_rehab.xlsx
# (You may want to paste the code here)


# Numerical Summaries -------------------------------------
favstats(copd_rehab$community)
favstats(copd_rehab$hospital)

# Graphical Summaries -------------------------------------
boxplot(copd_rehab$community, copd_rehab$hospital,
        names = c("Community", "Hospital"))

# Confidence Interval -------------------------------------
t.test(copd_rehab$community, copd_rehab$hospital, 
       mu = 0,
       alternative = "two.sided",
       conf.level = 0.90)
