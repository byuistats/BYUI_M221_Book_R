# ===================================================================
# Lesson 16: Describing Categorical Data: Proportions; Sampling Distribution of a Sample Proportion
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Sample Proportions ================================================



# Student Grades Example ----------------------------------
# Load the data for this lesson
load(url("https://byuistats.github.io/M221R/data/L16.RData"))

# Graphical Summaries -------------------------------------
barplot(count ~ grade, data = grades_tally)

barplot(
  count ~ grade, data = grades_tally, 
  col = "steelblue3", 
  main = "Final Letter Grades",
  xlab = "Grade", 
  ylab = "Number of Students"
)