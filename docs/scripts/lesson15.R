# =============================================================================
# Lesson 15: Unit 2 Review
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