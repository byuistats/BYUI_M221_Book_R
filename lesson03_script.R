# MATH 221D
# Lesson 3
# Sample R code
# https://byuistats.github.io/BYUI_M221_Book_R

# Read in tuberculosis data (Note: this is a vector)
tuberc <- c(15100, 19000, 4800, 6500, 14900, 600, 23500, 11500, 12900, 32200)

# --------------------------------------------------
# Numerical Summaries: Measures of center
#                      Mean, Median, and Mode
# --------------------------------------------------

# Compute the mean
mean(tuberc)

# Compute the median
median(tuberc)

# Find the mode
table(tuberc)


# --------------------------------------------------
# Histograms  
# --------------------------------------------------

# Basic histogram of the tuberculosis data
hist(tuberc)

# Optional nicer histogram of the tuberculosis data
hist(tuberc, 
     col = "skyblue", 
     main = "Histogram of Costs to Treat Tuberculosis", 
     xlab = "Cost in Dollars", 
     ylab = "Number of Individuals")


# --------------------------------------------------
# Example of Reading Data from a Web Page
# --------------------------------------------------

# Read in required packages
if (!require("pacman")) install.packages("pacman")
pacman::p_load(curl, readxl)

# To download an Excel file from the web, update the URL below:
url <- "https://byuistats.github.io/BYUI_M221_Book_R/Data/wrong_site_wrong_patient.xlsx"
destfile <- basename(url)
curl::curl_download(url, destfile)
mydata <- read_excel(destfile)
View(mydata)

# Compute the mean of the wrong_site data
mean(mydata$wrong_site)

# Compute the median of the wrong_site data
median(mydata$wrong_site)

# Find the mode of the wrong_site data 
# (Note: this is not very helpful)
table(mydata$wrong_site)

# Find the mode of the wrong_site data (Sorted in ascending order)
# Notice the two most-frequently occurring value is 0, with 50 instances
sort(table(mydata$wrong_site))

# Basic histogram of the wrong_site data
hist(mydata$wrong_site)
