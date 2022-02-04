# ===================================================================
# Lesson 12: Inference for the Mean of Differences (Two Dependent Samples)
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================

# Load R Packages ===================================================
library(readxl)
library(mosaic)



# Hypothesis Tests ==================================================



# Weight Loss Example -------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/weight_loss.xlsx
# (The "Import Dataset" code was pasted here:)
library(readxl)
url <- "https://byuistats.github.io/M221R/data/weight_loss.xlsx"
destfile <- "weight_loss.xlsx"
curl::curl_download(url, destfile)
body_temp <- read_excel(destfile)
View(body_temp)

# Compute Column of Differences
weight_loss$difference <- weight_loss$post - weight_loss$pre

# Numerical Summaries -------------------------------------
favstats(weight_loss$difference) 

# Graphical Summaries -------------------------------------
hist(weight_loss$difference)
boxplot(weight_loss$difference, horizontal=TRUE)

# One-Sample t-Test, Sigma Unknown ------------------------
t.test(weight_loss$difference,   # Data
       mu = 0,                   # Value from null hypothesis
       alternative="two.sided")  # Could be "two.sided", "greater" or "less"



# Hospital Infections Data --------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/hospital_infections.xlsx
# (You may want to paste the code here)


# Compute Column of Differences
hospital_infections$difference <- 
  hospital_infections$infected - hospital_infections$not_infected

# Numerical Summaries -------------------------------------
favstats(hospital_infections$difference) 

# Graphical Summaries -------------------------------------
hist(hospital_infections$difference)
boxplot(hospital_infections$difference, horizontal=TRUE)

# One-Sample t-Test, Sigma Unknown ------------------------
t.test(hospital_infections$difference, mu = 0, alternative = "greater")



# REE -----------------------------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/ree.xlsx
# (You may want to paste the code here)


# Compute Column of Differences
ree$difference <- ree$stressful - ree$silence

# Numerical Summaries -------------------------------------
favstats(ree$difference)

# Graphical Summaries -------------------------------------
hist(ree$difference)
boxplot(ree$difference, horizontal = TRUE)

# One-Sample t-Test, Sigma Unknown ------------------------
t.test(ree$difference, mu = 0, alternative = "greater")



# Flight Costs --------------------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/flight_costs.xlsx
# (You may want to paste the code here)


# Compute Column of Differences
flight_costs$difference <- 
  flight_costs$fourteen_days - flight_costs$ninety_days

# Numerical Summaries -------------------------------------
favstats(flight_costs$difference)

# Graphical Summaries -------------------------------------
hist(flight_costs$difference)
boxplot(flight_costs$difference, horizontal = TRUE)

# One-Sample t-Test, Sigma Unknown ------------------------
t.test(flight_costs$difference, mu = 0, alternative = "two.sided")



# Confidence Intervals ==============================================



# Pine Beetles --------------------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/pine_beetle.xlsx
# (You may want to paste the code here)


# Compute Column of Differences
pine_beetle$difference <- pine_beetle$after - pine_beetle$before

# Numerical Summaries -------------------------------------
favstats(pine_beetle$difference)

# Graphical Summaries -------------------------------------
hist(pine_beetle$difference)
boxplot(pine_beetle$difference, horizontal=TRUE)

# Confidence Interval for One Mean, Sigma Unknown ---------
t.test(pine_beetle$difference, conf.level = 0.95)



# Sleep-Inducing Drugs ------------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/sleep.xlsx
# (You may want to paste the code here)


# Compute Column of Differences
sleep$difference = sleep$treatment - sleep$control

# Numerical Summaries -------------------------------------
favstats(sleep$difference)

# Graphical Summaries -------------------------------------
hist(sleep$difference) 
boxplot(sleep$difference, horizontal=TRUE)

# Confidence Interval for One Mean, Sigma Unknown ---------
t.test(sleep$difference, conf.level = 0.90)