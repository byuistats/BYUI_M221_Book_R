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
# Load the data for this lesson
load(url("https://byuistats.github.io/M221R/data/L21.RData"))

# Scatterplot ---------------------------------------------
plot(score ~ confidence_rating_mean, data = math_self_efficacy)

# Correlation Coefficient ---------------------------------
cor(math_self_efficacy$confidence_rating_mean, math_self_efficacy$score)
# If there are NAs in the data set, use this command:
cor(math_self_efficacy$confidence_rating_mean, math_self_efficacy$score,
    use = "pairwise.complete.obs")



# Old Faithful Example ------------------------------------
# Load the data for this lesson
load(url("https://byuistats.github.io/M221R/data/L21.RData"))

# Scatterplot ---------------------------------------------
plot(wait ~ duration, data = old_faithful)

# Correlation Coefficient ---------------------------------
cor(old_faithful$wait, old_faithful$duration)
# If there are NAs in the data set, use this command:
cor(old_faithful$wait, old_faithful$duration,
    use = "pairwise.complete.obs")
