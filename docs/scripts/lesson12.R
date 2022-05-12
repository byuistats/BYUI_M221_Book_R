# ===================================================================
# Lesson 12: Inference for the Mean of Differences (Two Dependent Samples)
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Hypothesis Tests and Confidence Intervals =========================



# Weight Loss Example -------------------------------
# Load the data for this lesson
load(url("https://byuistats.github.io/M221R/data/L12.RData"))

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



# Hospital Infections Data --------------------------------
# Load the data for this lesson
load(url("https://byuistats.github.io/M221R/data/L12.RData"))

# Compute Column of Differences
hospital_infections$difference <- 
  hospital_infections$infected - hospital_infections$not_infected

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(hospital_infections$difference) 

# Graphical Summaries -------------------------------------
hist(hospital_infections$difference)
boxplot(hospital_infections$difference, horizontal=TRUE)

# Hypothesis Test -----------------------------------------
t.test(hospital_infections$difference, 
       mu = 0, 
       alternative = "greater",
       conf.level = 0.95)



# REE -----------------------------------------------------
# Load the data for this lesson
load(url("https://byuistats.github.io/M221R/data/L12.RData"))

# Compute Column of Differences
ree$difference <- ree$stressful - ree$silence

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(ree$difference)

# Graphical Summaries -------------------------------------
hist(ree$difference)
boxplot(ree$difference, horizontal = TRUE)

# Hypothesis Test -----------------------------------------
t.test(ree$difference, 
       mu = 0, 
       alternative = "greater",
       conf.level = 0.95)



# Flight Costs --------------------------------------------
# Load the data for this lesson
load(url("https://byuistats.github.io/M221R/data/L12.RData"))

# Compute Column of Differences
flight_costs$difference <- 
  flight_costs$fourteen_days - flight_costs$ninety_days

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(flight_costs$difference)

# Graphical Summaries -------------------------------------
hist(flight_costs$difference)
boxplot(flight_costs$difference, horizontal = TRUE)

# Hypothesis Test -----------------------------------------
t.test(flight_costs$difference, 
       mu = 0, 
       alternative = "two.sided",
       conf.level = 0.95)



# Confidence Intervals ==============================================



# Pine Beetles --------------------------------------------
# Load the data for this lesson
load(url("https://byuistats.github.io/M221R/data/L12.RData"))

# Compute Column of Differences
pine_beetle$difference <- pine_beetle$after - pine_beetle$before

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(pine_beetle$difference)

# Graphical Summaries -------------------------------------
hist(pine_beetle$difference)
boxplot(pine_beetle$difference, horizontal=TRUE)

# Confidence Interval -------------------------------------
t.test(pine_beetle$difference, conf.level = 0.95)



# Sleep-Inducing Drugs ------------------------------------
# Load the data for this lesson
load(url("https://byuistats.github.io/M221R/data/L12.RData"))

# Compute Column of Differences
sleep$difference = sleep$treatment - sleep$control

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(sleep$difference)

# Graphical Summaries -------------------------------------
hist(sleep$difference) 
boxplot(sleep$difference, horizontal=TRUE)

# Confidence Interval -------------------------------------
t.test(sleep$difference, conf.level = 0.90)