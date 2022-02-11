# ===================================================================
# Lesson 14: Inference using ANOVA (Several Independent Samples)
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================

# Load R Packages ===================================================
library(readxl)
library(mosaic)



# Hypothesis Tests ==================================================



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



# Hypothesis Tests ==================================================



# Soccer Shoes Example ------------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/soccer_shoes.xlsx
# (You may want to paste the code here)


# Numerical Summaries -------------------------------------
favstats(soccer_shoes$accuracy ~ soccer_shoes$footwear)

# Graphical Summaries -------------------------------------
boxplot(soccer_shoes$accuracy ~ soccer_shoes$footwear)

# Hypothesis Test -----------------------------------------
soccer_aov <- aov(soccer_shoes$accuracy ~ soccer_shoes$footwear)
summary(soccer_aov)