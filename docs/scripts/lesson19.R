# ===================================================================
# Lesson 19: Inference for Independence of Categorical Data
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================

# Load R Packages ===================================================
library(readxl)



# Hypothesis Tests ==================================================



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