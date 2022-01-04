# MATH 221D
# Lesson 4
# Sample R code
# https://byuistats.github.io/BYUI_M221_Book_R

# --------------------------------------------------
# Load packages and read in data
# --------------------------------------------------

# Load required packages
if (!require("pacman")) install.packages("pacman")
pacman::p_load(curl, readxl)

# Read in the data
# To download an Excel file from the web, update the URL below:
url <- "https://byuistats.github.io/BYUI_M221_Book_R/Data/wrong_site_wrong_patient.xlsx"
destfile <- basename(url)
curl::curl_download(url, destfile)
mydata <- read_excel(destfile)
View(mydata)


# --------------------------------------------------
# Percentiles
# --------------------------------------------------

# Compute the 25th percentile
# Note: You will need to change the variable name from "wrong_site" 
#       to whatever your variable is called.
# Change the 0.25 to another value to compute a different percentile.
quantile(mydata$wrong_site, 0.25)

# Five-number summary
summary(mydata$wrong_site)


# --------------------------------------------------
# Boxplots
# --------------------------------------------------

# Simple boxplot
boxplot(mydata$wrong_site, horizontal = TRUE)

# Optional boxplot (in 1000s of dollars)
boxplot(mydata$wrong_site/1000, 
        horizontal=TRUE, 
        xlab="Cost in Thousands of Dollars", 
        col="seagreen")

# Optional simple side-by-side boxplot
boxplot(mydata$wrong_site, 
        mydata$wrong_patient)

# Optional fancier side-by-side boxplot (in 1000s of dollars)
boxplot(mydata$wrong_site/1000000, 
        mydata$wrong_patient/1000000, 
        names=c("Wrong Site", "Wrong Patient"), 
        col=c("skyblue3","firebrick"), 
        main="Cost to Hospital by Lawsuit Type", 
        ylab="Cost in Millions of Dollars", 
        las=1)


# --------------------------------------------------
# Handling missing values
# --------------------------------------------------

# Example of summary statistics with missing values
mean(mydata$wrong_patient, na.rm=TRUE)
median(mydata$wrong_patient, na.rm=TRUE)
sd(mydata$wrong_patient, na.rm=TRUE)
quantile(mydata$wrong_patient, 0.25, na.rm=TRUE)
summary(mydata$wrong_patient)