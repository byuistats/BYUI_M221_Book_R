# Script file template
# Delete the first 20 rows

# Main headings are 70 characters long:
# ===================================================================
# Hypothesis Tests ==================================================
# Confidence Intervals ==============================================

# New example headings and sub-headings in examples are 60 characters long:
# Body Temperatures Example -------------------------------
# Numerical Summaries -------------------------------------
# Graphical Summaries -------------------------------------

# 3 blank lines before each new section or new example
# 2 blank lines where import code can be inserted
# 1 blank line between subsections in each example
# A space follows the "#" as the start of each comment
# Comments at the end of a line are rare


# ===================================================================
# Lesson xx: xxxxxxxxxxxx_DESCRIPTION_xxxxxxxxxxx
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================

# Load R Packages ===================================================
library(readxl)
library(mosaic)



# Hypothesis Tests ==================================================



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

# One-Sample t-Test, Sigma Unknown ------------------------
t.test(body_temp$temperature,    # Data
       mu = 98.6,                # Value from null hypothesis
       alternative="two.sided")  # Could be "two.sided", "greater" or "less"



# Baby Boom Data ------------------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/baby_boom.xlsx
# (You may want to paste the code here)


# Numerical Summaries -------------------------------------
favstats(baby_boom$weight) 

# Graphical Summaries -------------------------------------
hist(baby_boom$weight)
boxplot(baby_boom$weight, horizontal=TRUE)

# One-Sample t-Test, Sigma Unknown ------------------------
t.test(baby_boom$weight, mu = 3373, alternative="two.sided")



# Confidence Intervals ==============================================



# BLEU Scores ---------------------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/bleu.xlsx
# (You may want to paste the code here)


# Numerical Summaries -------------------------------------
favstats(bleu$score)

# Graphical Summaries -------------------------------------
hist(bleu$score)
boxplot(bleu$score, horizontal=TRUE)

# Confidence Interval for One Mean, Sigma Unknown ---------
t.test(bleu$score, conf.level=0.95)



# Euro Weights --------------------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/euro.xlsx
# (You may want to paste the code here)


# Numerical Summaries -------------------------------------
favstats(euro$weight)

# Graphical Summaries -------------------------------------
hist(euro$weight) 
boxplot(euro$weight, horizontal=TRUE)

# Confidence Interval for One Mean, Sigma Unknown ---------
t.test(euro$weight, conf.level=0.99)