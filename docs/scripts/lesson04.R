# MATH 221D
# Lesson 4
# Sample R code
# https://byuistats.github.io/BYUI_M221_Book_R



# Surgery Lawsuits Example --------------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx
# (The "Import Dataset" code was pasted here:)
library(readxl)
url <- "https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx"
destfile <- "surgery_lawsuits.xlsx"
curl::curl_download(url, destfile)
surgery_lawsuits <- read_excel(destfile)
View(surgery_lawsuits)

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(surgery_lawsuits$wrong_site)
quantile(surgery_lawsuits$wrong_site, 0.25) # 25th percentile

# Graphical Summaries -------------------------------------
hist(surgery_lawsuits$wrong_site)
boxplot(surgery_lawsuits$wrong_site, horizontal = TRUE)