# ===================================================================
# Lesson 21: Describing Bivariate Data
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================

# Load R Packages ===================================================
library(readxl)



# Correlation and Scatterplots ======================================



# Math Self-Efficacy Example ------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/math_self_efficacy.xlsx
# (The "Import Dataset" code was pasted here:)
library(readxl)
url <- "https://byuistats.github.io/M221R/data/math_self_efficacy.xlsx"
destfile <- "math_self_efficacy.xlsx"
curl::curl_download(url, destfile)
math_self_efficacy <- read_excel(destfile)
View(math_self_efficacy)


# Scatterplot ---------------------------------------------
plot(score ~ confidence_rating_mean, data = math_self_efficacy)

# Correlation Coefficient ---------------------------------
cor(math_self_efficacy$confidence_rating_mean, math_self_efficacy$score)
# If there are NAs in the data set, use this command:
cor(math_self_efficacy$confidence_rating_mean, math_self_efficacy$score,
    use = "pairwise.complete.obs")



# Old Faithful Example ------------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/old_faithful.xlsx
# (You may want to paste the code here)


# Scatterplot ---------------------------------------------
plot(wait ~ duration, data = old_faithful)

# Correlation Coefficient ---------------------------------
cor(old_faithful$wait, old_faithful$duration)
# If there are NAs in the data set, use this command:
cor(old_faithful$wait, old_faithful$duration,
    use = "pairwise.complete.obs")
