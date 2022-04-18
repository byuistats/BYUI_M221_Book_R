# MATH 221D
# Lesson 3
# Sample R code
# https://byuistats.github.io/BYUI_M221_Book_R



# Install required packages for the course ----------------
# (You only need to run this once!)
install.packages("librarian")
librarian::shelf(curl, readxl, tidyverse, mosaic)







# Tuberculosis Example ------------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/tuberculosis.xlsx
# (The "Import Dataset" code was pasted here:)
library(readxl)
url <- "https://byuistats.github.io/M221R/data/tuberculosis.xlsx"
destfile <- "tuberculosis.xlsx"
curl::curl_download(url, destfile)
tuberculosis <- read_excel(destfile)
View(tuberculosis)

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(tuberculosis$costs)

# Graphical Summaries -------------------------------------
hist(tuberculosis$costs)










# To download an Excel file from the web, update the URL below:
url <- "https://byuistats.github.io/M221R/Data/surgery_lawsuits.xlsx"
destfile <- basename(url)
curl::curl_download(url, destfile)
surgery_lawsuits <- read_excel(destfile)
View(surgery_lawsuits)

# Compute the mean of the wrong_site data
mean(surgery_lawsuits$wrong_site)

# Compute the median of the wrong_site data
median(surgery_lawsuits$wrong_site)

# Find the mode of the wrong_site data 
# (Note: this is not very helpful)
table(surgery_lawsuits$wrong_site)

# Find the mode of the wrong_site data (Sorted in ascending order)
# Notice the two most-frequently occurring value is 0, with 50 instances
sort(table(surgery_lawsuits$wrong_site))

# Basic histogram of the wrong_site data
hist(surgery_lawsuits$wrong_site)
