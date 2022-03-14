#Turn a contingency table into a 
longerizer <- function(x, filename, piv_cols = 2:ncol(x), sample = FALSE) {
  #pivot longer for uncount(), put all counts in one 'weights' column
  counts <- tidyr::pivot_longer(x, cols = piv_cols) 
  #uncount() data into 'raw' format
  longver <- tidyr::uncount(counts, value)
  #remove recycled and useless value column
  longver$value <- NULL
  #if sample is true, randomize data order
  if(sample == T) {longver <- longver[sample(nrow(longver)),]}
  #write excel file of raw format data
  writexl::write_xlsx(longver,filename)
}

# for loop to automate process using wrapper function and vector of filenames

make_long <- function(name) {
  
  data1 <- readxl::read_excel(stringr::str_c(name,".xlsx"))
  
  longerizer(data1,stringr::str_c(name,"_raw.xlsx"), sample = TRUE)
  
  data2 <- readxl::read_excel(stringr::str_c(name,"_raw.xlsx"))
  
  table(data2)
}


namen <- c("voting_preference_L19P","class_attendance_L19T",
           "class_preference_L19T","course_type_L19H",
           "morning_people_pexam3","performance_over_40_exam3")

for(i in 1:6) {
  make_long(namen[i])
}

