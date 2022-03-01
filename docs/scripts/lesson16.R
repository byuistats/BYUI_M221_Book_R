# ===================================================================
# Lesson 16: Describing Categorical Data: Proportions; Sampling Distribution of a Sample Proportion
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Sample Proportions ================================================



# Student Grades Example ----------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/grades_tally.xlsx
# (The "Import Dataset" code was pasted here:)
library(readxl)
url <- "https://byuistats.github.io/M221R/data/grades_tally.xlsx"
destfile <- "grades_tally.xlsx"
curl::curl_download(url, destfile)
grades_tally <- read_excel(destfile)
View(grades_tally)

# Graphical Summaries -------------------------------------
barplot(count ~ grade, data = grades_tally)

barplot(
  count ~ grade, data = grades_tally, 
  col = "steelblue3", 
  main = "Final Letter Grades",
  xlab = "Grade", 
  ylab = "Number of Students"
)