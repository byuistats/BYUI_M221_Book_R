# Expand summarized data into one-row-per-observation tidy data using uncount


longerizer <- function(x, filename, piv_cols = 2:ncol(x)) {
  #pivot longer for uncount(), put all counts in one 'weights' column
  counts <- tidyr::pivot_longer(x, cols = piv_cols) 
  #uncount() data into 'raw' format
  longver <- tidyr::uncount(counts, value)
  #remove recycled and useless value column
  longver$value <- NULL
  #write excel file of raw format data
  writexl::write_xlsx(longver,filename)
}

#example using chiropractic data:

library(readxl)
url <- "https://byuistats.github.io/M221R/data/chiropractic_care_table.xlsx"
destfile <- "chiropractic_care_table.xlsx"
curl::curl_download(url, destfile)
chiropractic_care_table <- read_excel(destfile)

longerizer(chiropractic_care_table, "chiropractic_care_long.xlsx")



