# ===================================================================
# Lesson 15: Unit 2 Review
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================

# Load R Packages ===================================================
library(readxl)
library(mosaic)



# Lesson 11: Inference for One Mean (Sigma Unknown) ===========================



# Body Temperatures Example -------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/body_temp.xlsx
# (The "Import Dataset" code was pasted here:)
library(readxl)
url <- "https://byuistats.github.io/M221R/data/body_temp.xlsx"
destfile <- "body_temp.xlsx"
curl::curl_download(url, destfile)
body_temp <- read_excel(destfile)
View(body_temp)

# Numerical Summaries -------------------------------------
favstats(body_temp$temperature) 

# Graphical Summaries -------------------------------------
hist(body_temp$temperature)
boxplot(body_temp$temperature, horizontal=TRUE)

# Hypothesis Test -----------------------------------------
t.test(body_temp$temperature,      # Data
       mu = 98.6,                  # Value from null hypothesis
       alternative = "two.sided")  # Could be "two.sided", "greater" or "less"

# Confidence Interval -------------------------------------
t.test(body_temp$temperature,      # Data
       conf.level = 0.95)          # Confidence level



# Lesson 12: Inference for the Mean of Differences (Two Dependent Samples) ====



# Weight Loss Example -------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/weight_loss.xlsx
# (The "Import Dataset" code was pasted here:)
library(readxl)
url <- "https://byuistats.github.io/M221R/data/weight_loss.xlsx"
destfile <- "weight_loss.xlsx"
curl::curl_download(url, destfile)
weight_loss <- read_excel(destfile)
View(weight_loss)

# Compute Column of Differences
weight_loss$difference <- weight_loss$post - weight_loss$pre

# Numerical Summaries -------------------------------------
favstats(weight_loss$difference) 

# Graphical Summaries -------------------------------------
hist(weight_loss$difference)
boxplot(weight_loss$difference, horizontal=TRUE)

# Hypothesis Test -----------------------------------------
t.test(weight_loss$difference,     # Data
       mu = 0,                     # Value from null hypothesis
       alternative = "two.sided",  # Could be "two.sided", "greater" or "less"
       conf.level = 0.95)          # Confidence level for a confidence interval

# Confidence Interval -------------------------------------
t.test(weight_loss$difference,     # Data
       conf.level=0.95)            # Confidence level



# Lesson 13: Inference for the Difference of Means (Two Independent Samples) ==



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



# Lesson 14: Inference using ANOVA (Several Independent Samples) ==============



# Gratitude Example ---------------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/gratitude.xlsx
# (The "Import Dataset" code was pasted here:)
library(readxl)
url <- "https://byuistats.github.io/M221R/data/gratitude.xlsx"
destfile <- "gratitude.xlsx"
curl::curl_download(url, destfile)
gratitude <- read_excel(destfile)
View(gratitude)

# Numerical Summaries -------------------------------------
favstats(happiness ~ treatment, data = gratitude)

# Graphical Summaries -------------------------------------
boxplot(gratitude$happiness ~ gratitude$treatment)

# Hypothesis Test -----------------------------------------
gratitude_aov <- aov(happiness ~ treatment, data = gratitude)
summary(gratitude_aov)
