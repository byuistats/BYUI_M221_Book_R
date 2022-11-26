# ===================================================================
# Lesson 23: Inference for Bivariate Data
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Simple Linear Regression ==========================================



# Estuarine Crocodiles Example ----------------------------
# Load the estuarine_crocodiles data:
library(rio)
estuarine_crocodiles <- import("https://byuistats.github.io/M221R/Data/estuarine_crocodiles.xlsx")

# Simple Linear Regression Equation and Residuals ---------
estuarine_lm <- lm(body_length ~ head_length, data = estuarine_crocodiles)
summary(estuarine_lm)
estuarine_lm$residuals

# Checking Assumptions ------------------------------------
# Scatterplot (Linear Relationship) -----------------------
plot(body_length ~ head_length, data = estuarine_crocodiles)
abline(estuarine_lm)

# Residual Plot (Linear Relationship & Constant Variance) -
source("https://byuistats.github.io/M221R/scripts/functions.R")
residual_plot(estuarine_lm)

# Histogram of the residuals (Normal Error Term) ----------
hist(estuarine_lm$residuals)
hist(estuarine_lm$residuals, nclass = 10)

# 95% Confidence Interval for the Slope -------------------
confint(estuarine_lm, level = 0.95)



# Manatees and Powerboats Example -------------------------
# Load the manatees data:
library(rio)
manatees <- import("https://byuistats.github.io/M221R/Data/manatees.xlsx")

# Simple Linear Regression Equation and Residuals ---------
manatees_lm <- lm(manatees_killed ~ power_boats_1000s, data = manatees)
summary(manatees_lm)
manatees_lm$residuals

# Checking Assumptions ------------------------------------
# Scatterplot (Linear Relationship) -----------------------
plot(manatees_killed ~ power_boats_1000s, data = manatees)
abline(manatees_lm)

# Residual Plot (Linear Relationship & Constant Variance) -
source("https://byuistats.github.io/M221R/scripts/functions.R")
residual_plot(manatees_lm)

# Histogram of the residuals (Normal Error Term) ----------
hist(manatees_lm$residuals, nclass = 10)

# 95% Confidence Interval for the Slope -------------------
confint(manatees_lm, level = 0.95)