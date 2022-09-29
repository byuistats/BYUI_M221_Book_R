# =============================================================================
# Lesson 24: Unit 4 Review
# Sample R code 
# MATH 221D
# Brigham Young University-Idaho
# =============================================================================



# Lesson 3: Describing Quantitative Data (Shape & Center) =====================



# Tuberculosis Example ------------------------------------
# Load the tuberculosis data:
#   https://byuistats.github.io/M221R/data/tuberculosis.xlsx

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(tuberculosis$costs)    # Mean, Median
sort(table(tuberculosis$costs)) # Mode

# Graphical Summaries -------------------------------------
hist(tuberculosis$costs)



# Lesson 4: Describing Quantitative Data (Spread) =============================



# Surgery Lawsuits Example --------------------------------
# Load the surgery_lawsuits data:
#   https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(surgery_lawsuits$wrong_site)
quantile(surgery_lawsuits$wrong_site, 0.25) # 25th percentile

# Graphical Summaries -------------------------------------
hist(surgery_lawsuits$wrong_site)
boxplot(surgery_lawsuits$wrong_site, horizontal = TRUE)



# Lesson 11: Inference for One Mean (Sigma Unknown) ===========================



# Body Temperatures Example -------------------------------
# Load the body_temp data:
#   https://byuistats.github.io/M221R/data/body_temp.xlsx

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(body_temp$temperature) 

# Graphical Summaries -------------------------------------
hist(body_temp$temperature)
boxplot(body_temp$temperature, horizontal=TRUE)

# Hypothesis Test -----------------------------------------
t.test(body_temp$temperature,    # Data
       mu = 98.6,                # Value from null hypothesis
       alternative="two.sided")  # Could be "two.sided", "greater" or "less"

# Confidence Interval -------------------------------------
t.test(body_temp$temperature,      # Data
       conf.level = 0.95)          # Confidence level



# Lesson 12: Inference for the Mean of Differences (Two Dependent Samples) ====



# Weight Loss Example -------------------------------
# Load the weight_loss data:
#   https://byuistats.github.io/M221R/data/weight_loss.xlsx

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
       alternative = "two.sided")  # Could be "two.sided", "greater" or "less"

# Confidence Interval -------------------------------------
t.test(weight_loss$difference,     # Data
       conf.level=0.95)            # Confidence level



# Lesson 13: Inference for the Difference of Means (Two Independent Samples) ==



# FIFA Heart Attacks Example (Long Data) ------------------
# Load the fifa_heart_attacks data:
#   https://byuistats.github.io/M221R/data/fifa_heart_attacks.xlsx

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(heart_attacks ~ time_period, data = fifa_heart_attacks)

# Graphical Summaries -------------------------------------
boxplot(heart_attacks ~ time_period, data = fifa_heart_attacks)

# Hypothesis Test -----------------------------------------
t.test(heart_attacks ~ time_period, data = fifa_heart_attacks,
       alternative = "less")

# Confidence Interval -------------------------------------
t.test(heart_attacks ~ time_period, data = fifa_heart_attacks,
       conf.level = 0.95)



# COPD Example (Wide Data) --------------------------------
# Load the copd_rehab data:
#   https://byuistats.github.io/M221R/data/copd_rehab.xlsx

# Convert Data from Wide to Long Format (if necessary) ----
copd_rehab$comments <- NULL     # Eliminate column of comments
copd <- stack(copd_rehab)

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(values ~ ind, data = copd)

# Graphical Summaries -------------------------------------
boxplot(values ~ ind, data = copd)

# Hypothesis Test -----------------------------------------
t.test(values ~ ind, data = copd,
       alternative = "two.sided")

# Confidence Interval -------------------------------------
t.test(values ~ ind, data = copd,
       conf.level = 0.95)



# Lesson 14: Inference using ANOVA (Several Independent Samples) ==============



# Gratitude Example (Long Data) ---------------------------
# Load the gratitude data:
#   https://byuistats.github.io/M221R/data/gratitude.xlsx

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(happiness ~ treatment, data = gratitude)

# Checking ANOVA requirements -----------------------------
var(happiness ~ treatment, data = gratitude)
max( var(happiness ~ treatment, data = gratitude) ) # Max variance
min( var(happiness ~ treatment, data = gratitude) ) # Min variance

# Graphical Summaries -------------------------------------
boxplot(happiness ~ treatment, data = gratitude)

# Hypothesis Test -----------------------------------------
aov_output <- aov(happiness ~ treatment, data = gratitude)
summary(aov_output)



# Soccer Shoes Example (Wide Data) ------------------------
# Load the soccer_shoes data:
#   https://byuistats.github.io/M221R/data/soccer_shoes.xlsx

# Convert Data from Wide to Long Format -------------------
soccer <- stack( Filter(is.numeric, soccer_shoes) )

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(values ~ ind, data = soccer)

# Checking ANOVA requirements -----------------------------
var(values ~ ind, data = soccer)
max( var(values ~ ind, data = soccer) ) # Max variance
min( var(values ~ ind, data = soccer) ) # Min variance

# Graphical Summaries -------------------------------------
boxplot(values ~ ind, data = soccer)

# Hypothesis Test -----------------------------------------
aov_output <- aov(values ~ ind, data = soccer)
summary(aov_output)



# Lesson 16: Describing Categorical Data: Proportions; Sampling Distribution of a Sample Proportion ==



# Student Grades Example ----------------------------------
# Load the grades_tally data:
#   https://byuistats.github.io/M221R/data/grades_tally.xlsx

# Graphical Summaries -------------------------------------
barplot(count ~ grade, data = grades_tally)

barplot(
  count ~ grade, data = grades_tally, 
  col = "steelblue3", 
  main = "Final Letter Grades",
  xlab = "Grade", 
  ylab = "Number of Students"
)



# Lesson 17: Inference for One Proportion =====================================



# Hypothesis Tests ----------------------------------------

# PTC Tasting (One Population) Example --------------------
# Load the function and conduct the test
source("https://byuistats.github.io/M221R/scripts/functions.R")
one.prop.test(x = 89, n = 118, p = 0.70, alternative = "two.sided")
one.prop.test(
  x = 89,                    # Number of successes
  n = 118,                   # Total number of trials (observations)
  p = 0.70,                  # True proportion, given in null hypothesis
  alternative = "two.sided"  # Can be "two.sided", "less", or "greater"
)

# Confidence Intervals ------------------------------------

# Honesty at Medical School Example -----------------------
source("https://byuistats.github.io/M221R/scripts/functions.R")
one.prop.test(x = 249, n = 428, conf.level = 0.95)



# Lesson 18: Inference for Two Proportions ====================================



# Hypothesis Tests ----------------------------------------

# PTC Tasting (Men Vs. Women) Example ---------------------
source("https://byuistats.github.io/M221R/scripts/functions.R")
two.prop.test(x1 = 51, n1 = 66, x2 = 38, n2 = 52, alternative = "two.sided")

# Confidence Intervals ------------------------------------

# Managing Fox Populations Example ------------------------
source("https://byuistats.github.io/M221R/scripts/functions.R")
two.prop.test(x1 = 268, n1 = 1359, x2 = 576, n2 = 950, conf.level = 0.95)



# Lesson 19: Inference for Independence of Categorical Data ===================



# Hypothesis Tests ----------------------------------------

# Reasons for Seeking Chiropractic Care Example -----------
# Load the data for this lesson
load(url("https://byuistats.github.io/M221R/data/L19.RData"))

# Create a Contingency Table from the Raw Data ------------
contingency_table <- table(chiropractic_care_raw$location, chiropractic_care_raw$motivation)
contingency_table

# Transpose the Contingency Table -------------------------
t(contingency_table)

# Graphical Summaries -------------------------------------
barplot(contingency_table, beside = TRUE, legend = TRUE)
barplot(t(contingency_table), beside = TRUE, legend = TRUE)

# Hypothesis Test -----------------------------------------
chisq_results <- chisq.test(contingency_table)
chisq_results

# Check the Requirements ----------------------------------
chisq_results$expected



# Lesson 21: Describing Bivariate Data ========================================



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



# Lesson 22: Simple Linear Regression =========================================



# Estuarine Crocodiles Example ----------------------------
# Load the estuarine_crocodiles data:
#   https://byuistats.github.io/M221R/data/estuarine_crocodiles.xlsx

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



# Lesson 23: Inference for Bivariate Data =====================================



# Estuarine Crocodiles Example ----------------------------
# Load the estuarine_crocodiles data:
#   https://byuistats.github.io/M221R/data/estuarine_crocodiles.xlsx

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