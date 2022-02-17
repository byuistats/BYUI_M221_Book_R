# ===================================================================
# Lesson 14: Inference using ANOVA (Several Independent Samples)
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



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
library(mosaic)
favstats(happiness ~ treatment, data = gratitude)

# Graphical Summaries -------------------------------------
boxplot(happiness ~ treatment, data = gratitude)

# Hypothesis Test -----------------------------------------
aov_output <- aov(happiness ~ treatment, data = gratitude)
summary(aov_output)



# Hypothesis Tests ==================================================



# Soccer Shoes Example ------------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/soccer_shoes.xlsx
# (You may want to paste the code here)


# Convert Data from Wide to Long Format -------------------
soccer_shoes$comments <- NULL
soccer <- stack(soccer_shoes)

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(values ~ ind, data = soccer)

# Graphical Summaries -------------------------------------
boxplot(values ~ ind, data = soccer)

# Hypothesis Test -----------------------------------------
aov_output <- aov(values ~ ind, data = soccer)
summary(aov_output)
