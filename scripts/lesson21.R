# ===================================================================
# Lesson 21: Describing Bivariate Data
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Correlation and Scatterplots ======================================



# Math Self-Efficacy Example ------------------------------
# Load the math_self_efficacy data:
#   https://byuistats.github.io/M221R/data/math_self_efficacy.xlsx

# Scatterplot ---------------------------------------------
plot(score ~ confidence_rating_mean, data = math_self_efficacy)

# Correlation Coefficient ---------------------------------
cor(math_self_efficacy$confidence_rating_mean, math_self_efficacy$score)
# If there are NAs in the data set, use this command:
cor(math_self_efficacy$confidence_rating_mean, math_self_efficacy$score,
    use = "pairwise.complete.obs")



# Old Faithful Example ------------------------------------
# Load the old_faithful data:
#   https://byuistats.github.io/M221R/data/old_faithful.xlsx

# Scatterplot ---------------------------------------------
plot(wait ~ duration, data = old_faithful)

# Correlation Coefficient ---------------------------------
cor(old_faithful$wait, old_faithful$duration)
# If there are NAs in the data set, use this command:
cor(old_faithful$wait, old_faithful$duration,
    use = "pairwise.complete.obs")
