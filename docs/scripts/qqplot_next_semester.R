###########################################################

library("car")
qqPlot(values ~ ind, data = soccer)
qqPlot(soccer_shoes$socks)

###########################################################

# Read in the data below:

# Soccer Shoes Example (Wide Data) ------------------------
# Use "Import Dataset" to read the data into R
# https://byuistats.github.io/M221R/data/soccer_shoes.xlsx
# (You may want to paste the code here)
library(readxl)
url <- "https://byuistats.github.io/M221R/data/soccer_shoes.xlsx"
destfile <- "soccer_shoes.xlsx"
curl::curl_download(url, destfile)
soccer_shoes <- read_excel(destfile)
View(soccer_shoes)

# Convert Data from Wide to Long Format -------------------
soccer <- stack( Filter(is.numeric, soccer_shoes) )

