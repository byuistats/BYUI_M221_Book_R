# ===================================================================
# Lesson 3: Describing Quantitative Data (Shape & Center)
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Install required packages for the course ----------------
# (You only need to run this once!)
install.packages("mosaic")



# Tuberculosis Example ----------------------------------------------
# Load the tuberculosis data:
#   https://byuistats.github.io/M221R/data/tuberculosis.xlsx

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(tuberculosis$costs)    # Mean, Median
sort(table(tuberculosis$costs)) # Mode

# Graphical Summaries -------------------------------------
hist(tuberculosis$costs)