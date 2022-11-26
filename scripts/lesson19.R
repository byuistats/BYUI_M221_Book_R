# ===================================================================
# Lesson 19: Inference for Independence of Categorical Data
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Hypothesis Tests ==================================================



# Reasons for Seeking Chiropractic Care Example -----------
# Load the data for this lesson
library(rio)
chiropractic_care <- import("https://byuistats.github.io/M221R/Data/chiropractic_care_table.xlsx")

# Reformat the data for the chi-square test ------------
# -- Load the table_format() function
source("https://byuistats.github.io/M221R/scripts/functions.R")
contingency_table <- table_format(chiropractic_care)
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