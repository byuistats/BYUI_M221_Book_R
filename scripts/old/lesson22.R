# ===================================================================
# Lesson 22: Simple Linear Regression
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Simple Linear Regression ==========================================



# Estuarine Crocodiles Example ----------------------------
# Load the estuarine_crocodiles data:
library(rio)
estuarine_crocodiles <- import("https://byuistats.github.io/M221R/Data/estuarine_crocodiles.xlsx")

# Scatterplot ---------------------------------------------
plot(body_length ~ head_length, data = estuarine_crocodiles)

# Correlation Coefficient ---------------------------------
cor(estuarine_crocodiles$head_length, estuarine_crocodiles$body_length)

# Simple Linear Regression Equation -----------------------
estuarine_lm <- lm(body_length ~ head_length, data = estuarine_crocodiles)
summary(estuarine_lm)

# Adding a Linear Regression Line to the Scatterplot ------
plot(body_length ~ head_length, data = estuarine_crocodiles)
abline(estuarine_lm)



# Manatees and Powerboats Example -------------------------
# Load the manatees data:
library(rio)
manatees <- import("https://byuistats.github.io/M221R/Data/manatees.xlsx")

# Scatterplot ---------------------------------------------
plot(manatees_killed ~ power_boats_1000s, data = manatees)

# Correlation Coefficient ---------------------------------
cor(manatees$manatees_killed, manatees$power_boats_1000s)

# Simple Linear Regression Equation -----------------------
manatees_lm <- lm(manatees_killed ~ power_boats_1000s, data = manatees)
summary(manatees_lm)

# Adding a Linear Regression Line to the Scatterplot ------
plot(manatees_killed ~ power_boats_1000s, data = manatees)
abline(manatees_lm)