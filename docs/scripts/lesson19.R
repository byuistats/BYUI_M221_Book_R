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
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/chiropractic_care_raw.xlsx
# (The "Import Dataset" code was pasted here:)
library(readxl)
url <- "https://byuistats.github.io/M221R/data/chiropractic_care_raw.xlsx"
destfile <- "chiropractic_care_raw.xlsx"
curl::curl_download(url, destfile)
chiropractic_care_raw <- read_excel(destfile)
View(chiropractic_care_raw)


# Create a Contingency Table from the Raw Data ------------
contingency_table <- table(chiropractic_care_raw)
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