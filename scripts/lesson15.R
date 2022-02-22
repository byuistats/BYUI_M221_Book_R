# ===================================================================
# Lesson 15: Unit 2 Review
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Lesson 3: Describing Quantitative Data (Shape & Center) =====================



# Tuberculosis Example ------------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/tuberculosis.xlsx
# (The "Import Dataset" code was pasted here:)
library(readxl)
url <- "https://byuistats.github.io/M221R/data/tuberculosis.xlsx"
destfile <- "tuberculosis.xlsx"
curl::curl_download(url, destfile)
tuberculosis <- read_excel(destfile)
View(tuberculosis)

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(tuberculosis$costs)

# Graphical Summaries -------------------------------------
hist(tuberculosis$costs)



# Lesson 4: Describing Quantitative Data (Spread) =============================



# Surgery Lawsuits Example --------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx
# (The "Import Dataset" code was pasted here:)
library(readxl)
url <- "https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx"
destfile <- "surgery_lawsuits.xlsx"
curl::curl_download(url, destfile)
surgery_lawsuits <- read_excel(destfile)
View(surgery_lawsuits)

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(surgery_lawsuits$wrong_site)
quantile(surgery_lawsuits$wrong_site, 0.25) # 25th percentile

# Graphical Summaries -------------------------------------
hist(surgery_lawsuits$wrong_site)
boxplot(surgery_lawsuits$wrong_site, horizontal = TRUE)



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
library(mosaic)
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
library(mosaic)
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

# Convert Data from Wide to Long Format (if necessary) ----
copd_rehab$comments <- NULL     # Eliminate additional columns
copd <- stack(copd_rehab)

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(values ~ ind, data = copd)

# Graphical Summaries -------------------------------------
boxplot(values ~ ind, data = copd)

# Hypothesis Test -----------------------------------------
t.test(values ~ ind, data = copd,
       mu = 0,  
       alternative = "two.sided")

# Confidence Interval -------------------------------------
t.test(values ~ ind, data = copd,
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

# # Convert Data from Wide to Long Format (if necessary) ----
# gratitude$comments <- NULL     # Eliminate additional columns
# gratitude <- stack(gratitude)

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(happiness ~ treatment, data = gratitude)

# Checking ANOVA requirements -----------------------------
var(happiness ~ treatment, data = gratitude)

# Graphical Summaries -------------------------------------
boxplot(happiness ~ treatment, data = gratitude)

# Hypothesis Test -----------------------------------------
gratitude_aov <- aov(happiness ~ treatment, data = gratitude)
summary(gratitude_aov)