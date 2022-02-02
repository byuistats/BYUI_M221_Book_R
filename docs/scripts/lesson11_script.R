# MATH 221D
# Lesson 11
# Sample R code
# https://byuistats.github.io/M221R

# --------------------------------------------------
# Conduct a Hypothesis Test for a single mean with sigma unknown
# --------------------------------------------------


# --------------------------------------------------
# Data sets used in this script:
#    Body temperatures:          https://byuistats.github.io/M221R/data/body_temp.xlsx
#    Baby birth weights:         https://byuistats.github.io/M221R/data/baby_boom.xlsx
#    Bleu (translation) scores:  https://byuistats.github.io/M221R/data/bleu.xlsx
#    Weights of one Euro coins:  https://byuistats.github.io/M221R/data/euro.xlsx
# --------------------------------------------------



# ==================================================
#
# Hypothesis Tests
#
# ==================================================


# --------------------------------------------------
# Body Temperatures
# --------------------------------------------------

# --------------------------------------------------
# Load the body temperature data into R
pacman::p_load(curl, readxl)
url <- "https://byuistats.github.io/M221R/data/body_temp.xlsx"
destfile <- basename(url)
curl::curl_download(url, destfile)
body_temp <- read_excel(destfile)
View(body_temp)
# --------------------------------------------------

# Descriptive statistics
mean(body_temp$temperature)     # mean
sd(body_temp$temperature)       # standard deviation
length(body_temp$temperature)   # sample size (length of data vector)

# Histogram
hist(body_temp$temperature)

# Boxplot
boxplot(body_temp$temperature, horizontal=TRUE)

# one-sample t-test, sigma unknown + 90% confidence interval
t.test(body_temp$temperature,    # Data
       mu = 98.6,                # Value from null hypothesis
       alternative="two.sided")  # Could be "two.sided", "greater" or "less"



# --------------------------------------------------
# Baby Boom Data
# --------------------------------------------------

# Use baby_boom$weight to test if the mean birth weight 
# of babies in Australia is still 3373 grams

# --------------------------------------------------
# Load the baby_boom data into R
pacman::p_load(curl, readxl)
url <- "https://byuistats.github.io/M221R/data/baby_boom.xlsx"
destfile <- basename(url)
curl::curl_download(url, destfile)
baby_boom <- read_excel(destfile)
View(baby_boom)
# --------------------------------------------------

# Histogram
hist(baby_boom$weight)

# Boxplot
boxplot(baby_boom$weight, horizontal=TRUE)

# Descriptive statistics
mean(baby_boom$weight)     # mean
sd(baby_boom$weight)       # standard deviation
length(baby_boom$weight)   # sample size

# one-sample t-test, sigma unknown + 90% confidence interval
t.test(baby_boom$weight,         # Data
       mu = 3373,                # Value from null hypothesis
       alternative="two.sided")  # Could be "two.sided", "greater" or "less"





# ==================================================
#
# Confidence Intervals 
#
# ==================================================

# --------------------------------------------------
# BLEU Scores (A measure of the quality of a translation)
# --------------------------------------------------

# --------------------------------------------------
# Load the bleu data into R
url <-"https://byuistats.github.io/M221R/data/bleu.xlsx"
destfile <- basename(url)
curl::curl_download(url, destfile)
bleu <- read_excel(destfile)
View(bleu)
# --------------------------------------------------

# Descriptive statistics
mean(bleu$score)     # mean
sd(bleu$score)       # standard deviation
length(bleu$score)   # sample size

# Histogram
hist(bleu$score) 

# Boxplot
boxplot(bleu$score, horizontal=TRUE)

# Confidence Interval
# Uses the t.test function
t.test(bleu$score, conf.level=0.95)



# --------------------------------------------------
# Example: Euro Weights
# --------------------------------------------------

# --------------------------------------------------
# Load the euro weight data into R
url <- "https://byuistats.github.io/M221R/data/euro.xlsx"
destfile <- basename(url)
curl::curl_download(url, destfile)
euro <- read_excel(destfile)
View(euro)
# --------------------------------------------------

# Summary statistics
mean(euro$weight)   # mean
sd(euro$weight)     # standard deviation
length(euro$weight) # sample size

# Histogram 
hist(euro$weight) 

# Boxplot
boxplot(euro$weight, horizontal=TRUE)

# 99% confidence interval
t.test(euro$weight, conf.level=0.99) 


