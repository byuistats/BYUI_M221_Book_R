library(tidyverse)
library(readxl)

setwd("C:/Users/craigaj/Documents/GitHub/M221R/")


# load(url("https://byuistats.github.io/M221R/M221.RData"))
# 
# 
# load("C:/Users/craigaj/Documents/GitHub/M221R/M221.RData")


# Lesson 3

url <- "https://byuistats.github.io/M221R/Data/tuberculosis.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/surgery_lawsuits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/Data/dist_shapes.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/surgery_lawsuits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/lesson03/exam1.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/lesson03/grades.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/surgery_lawsuits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))


save(tuberculosis,
     surgery_lawsuits,
     dist_shapes,
     exam1,
     grades,
  file="Data/L03.RData")

save(tuberculosis,
     surgery_lawsuits,
     dist_shapes,
     exam1,
     grades,
  file="docs/Data/L03.RData")

# Lesson 4

url <- "https://byuistats.github.io/M221R/Data/surgery_lawsuits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/Data/dist_shapes.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/surgery_lawsuits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/lesson03/exam1.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/lesson03/grades.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(surgery_lawsuits,
     dist_shapes,
     exam1,
     grades,
  file="Data/L04.RData")

save(surgery_lawsuits,
     dist_shapes,
     exam1,
     grades,
  file="docs/Data/L04.RData")


# Lesson 5

url <- "https://byuistats.github.io/M221R/Data/batting_averages.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(batting_averages,
  file="Data/L05.RData")

save(batting_averages,
  file="docs/Data/L05.RData")

# Lesson 7

url <- "https://byuistats.github.io/M221R/Data/uranium_plant_lead.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(uranium_plant_lead,
     file="Data/L07.RData")

save(uranium_plant_lead,
     file="docs/Data/L07.RData")

# Lesson 8

url <- "https://emp.byui.edu/johnsonc/Data/hurricane.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/crossroads_purchases.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e1v2/employees.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(hurricane,
     crossroads_purchases,
     employees,
  file="Data/L08.RData")

save(hurricane,
     crossroads_purchases,
     employees,
  file="docs/Data/L08.RData")


# Unit 1 Exam

url <- "https://byuistats.github.io/M221R/Data/quiz/e1v3/study_hours.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(study_hours,
     file="Data/Exam1.RData")
save(study_hours,
     file="docs/Data/Exam1.RData")

# url <- "https://byuistats.github.io/M221R/Data/quiz/e1v2/employees.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
# 
# save(employees,
#      file="Data/Exam1.RData")
# 
# save(employees,
#      file="docs/Data/Exam1.RData")



# Lesson 9

# Textbook
url <- "https://byuistats.github.io/M221R/Data/ethan_allen.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/cardiac_arrest.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
# in-class exercises
url <- "https://byuistats.github.io/M221R/Data/body_temp.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(ethan_allen,
     body_temp,
     cardiac_arrest,
  file="Data/L09.RData")

save(ethan_allen,
     body_temp,
     cardiac_arrest,
  file="docs/Data/L09.RData")

# Lesson 10

url <- "https://byuistats.github.io/M221R/Data/body_temp.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(body_temp,
  file="Data/L10.RData")

save(body_temp,
  file="docs/Data/L10.RData")

# Lesson 11

url <- "https://byuistats.github.io/M221R/Data/body_temp.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/baby_boom.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/bleu.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/euro.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/Data/old_faithful.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/baby_boom_jse_11.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/body_temp_11.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/nile.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e2v2/rates_of_return.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/bleu.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(body_temp,
     baby_boom,
     bleu,
     euro,
     old_faithful,
     baby_boom_jse_11,
     body_temp_11,
     nile,
     rates_of_return,
     bleu,
  file="Data/L11.RData")

save(body_temp,
     baby_boom,
     bleu,
     euro,
     old_faithful,
     baby_boom_jse_11,
     body_temp_11,
     nile,
     rates_of_return,
     bleu,
  file="docs/Data/L11.RData")



# Lesson 12

url <- "https://byuistats.github.io/M221R/Data/weight_loss.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/hospital_infections.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/ree.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/direct_flight_costs.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/pine_beetle.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/sleep_drug.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/twin_heights.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/Data/bp_placebo.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/chapter_12_a.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/chapter_12_b.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/women_weights.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/am_pm_heights.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/nba_salaries.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(weight_loss,
     hospital_infections,
     ree,
     direct_flight_costs,
     pine_beetle,
     sleep_drug,
     twin_heights,
     bp_placebo,
     chapter_12_a,
     chapter_12_b,
     women_weights,
     am_pm_heights,
     nba_salaries,
  file="Data/L12.RData")

save(weight_loss,
     hospital_infections,
     ree,
     direct_flight_costs,
     pine_beetle,
     sleep_drug,
     twin_heights,
     bp_placebo,
     chapter_12_a,
     chapter_12_b,
     women_weights,
     am_pm_heights,
     nba_salaries,
  file="docs/Data/L12.RData")

# Lesson 13

url <- "https://byuistats.github.io/M221R/Data/reading.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/fifa_heart_attacks.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/copd_rehab.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/Data/old_faithful_eras.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/Data/salaries_nursing.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/dentist_bills.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/freshmen_dinner.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/dime_weights.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/iq.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/illinois_birth_weights_two_var.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/direct_flight_costs.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(reading,
     fifa_heart_attacks,
     copd_rehab,
     old_faithful_eras,
     salaries_nursing,
     dentist_bills,
     freshmen_dinner,
     dime_weights,
     iq,
     illinois_birth_weights_two_var,
     direct_flight_costs,
  file="Data/L13.RData")

save(reading,
     fifa_heart_attacks,
     copd_rehab,
     old_faithful_eras,
     salaries_nursing,
     dentist_bills,
     freshmen_dinner,
     dime_weights,
     iq,
     illinois_birth_weights_two_var,
     direct_flight_costs,
  file="docs/Data/L13.RData")

# Lesson 14

url <- "https://byuistats.github.io/M221R/Data/gratitude.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/soccer_shoes.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
# in-class exercises
url <- "https://emp.byui.edu/johnsonc/Data/kindness.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/Data/weight_loss_incentives.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
#
url <- "https://byuistats.github.io/M221R/Data/soccer_shoes.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/dasl_hot_dog.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
iris_data <- iris %>% rename(c("sepal_length" = "Sepal.Length", "sepal_width" = "Sepal.Width", "petal_length" = "Petal.Length", "petal_width" = "Petal.Width", "species" = "Species")) %>% mutate(species = str_replace_all(species, "Iris-", ""))
url <- "https://byuistats.github.io/M221R/Data/bone_mineral.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(gratitude,
     soccer_shoes,
     kindness,
     weight_loss_incentives,
     soccer_shoes,
     dasl_hot_dog,
     iris_data,
     bone_mineral,
  file="Data/L14.RData")

save(gratitude,
     soccer_shoes,
     kindness,
     weight_loss_incentives,
     soccer_shoes,
     dasl_hot_dog,
     iris_data,
     bone_mineral,
  file="docs/Data/L14.RData")


# Lesson 15

url <- "https://emp.byui.edu/johnsonc/Data/euro_wide.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/Data/center_st_speeds.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/Data/rexburg_pizza.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/dissolved_organic_carbon.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/used_hummers_ny_and_la.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/exercised_bone_density.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/prozac.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e2v2/cholesterol.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e2v2/fitness.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e2v2/calcium.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e2v2/rates_of_return.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(euro_wide,
     center_st_speeds,
     rexburg_pizza,
     dissolved_organic_carbon,
     used_hummers_ny_and_la,
     exercised_bone_density,
     prozac,
     cholesterol,
     fitness,
     calcium,
     rates_of_return,
  file="Data/L15.RData")

save(euro_wide,
     center_st_speeds,
     rexburg_pizza,
     dissolved_organic_carbon,
     used_hummers_ny_and_la,
     exercised_bone_density,
     prozac,
     cholesterol,
     fitness,
     calcium,
     rates_of_return,
  file="docs/Data/L15.RData")


# Test 2

url <- "https://byuistats.github.io/M221R/Data/quiz/e2v2/cholesterol.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e2v2/calcium.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e2v2/fitness.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e2v2/rates_of_return.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(cholesterol,
     calcium,
     fitness,
     rates_of_return,
     file="Data/Exam2.RData")

save(cholesterol,
     calcium,
     fitness,
     rates_of_return,
     file="docs/Data/Exam2.RData")


# Lesson 16

url <- "https://byuistats.github.io/M221R/Data/grades_gender.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/grades_tally.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/coin_heads.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(grades_gender,
     grades_tally,
     coin_heads,
     file="Data/L16.RData")

save(grades_gender,
     grades_tally,
     coin_heads,
     file="docs/Data/L16.RData")


# Lesson 17

# URLs_Go_HERE
# 
# save(
#   file="Data/L17.RData")
# 
# save(
#   file="docs/Data/L17.RData")

# Lesson 18

url <- "https://byuistats.github.io/M221R/Data/ptc_tasting.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/lesson18/grades.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(ptc_tasting,
     grades,
  file="Data/L18.RData")

save(ptc_tasting,
     grades,
  file="docs/Data/L18.RData")

# Lesson 19

url <- "https://byuistats.github.io/M221R/Data/chiropractic_care_raw.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
library(carData); titanic <- TitanicSurvival
url <- "https://emp.byui.edu/johnsonc/Data/bison.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
library(data.table); df <- data.frame(CJ(style = c(1:4), group = c(1:3))); df$n <- ifelse(df$style == 3 | df$group == 3, 45, 1000) + abs(df$style - df$group) * 0; df$style = paste0("style_", letters[df$style]); df$group = paste0("group_", df$group); hair_styles <- df[rep(row.names(df), df$n), 1:2]; table(hair_styles)
url <- "https://byuistats.github.io/M221R/Data/chiropractic_care_raw.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/grades_h19.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))


save(chiropractic_care_raw,
     titanic,
     bison,
     hair_styles,
     chiropractic_care_raw,
     grades_h19,
  file="Data/L19.RData")

save(chiropractic_care_raw,
     titanic,
     bison,
     hair_styles,
     chiropractic_care_raw,
     grades_h19,
  file="docs/Data/L19.RData")


# Lesson 20

url <- "https://emp.byui.edu/johnsonc/Data/lapd_searches.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/morning_people_pexam3_raw.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/bleu.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/TwinWeights.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url))); twin_weights <- TwinWeights %>% select(-"...4") %>% rename(comments = "...5")
url <- "https://byuistats.github.io/M221R/Data/quiz/e3v2/ratings.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e3v2/wake_county.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url))); wake_county <- wake_county %>% rename(comments = "...2")
url <- "https://byuistats.github.io/M221R/Data/quiz/e3v2/firms.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))


save(lapd_searches,
     morning_people_pexam3_raw,
     bleu,
     twin_weights,
     ratings,
     wake_county,
     firms,
  file="Data/L20.RData")

save(lapd_searches,
     morning_people_pexam3_raw,
     bleu,
     twin_weights,
     ratings,
     wake_county,
     firms,
  file="docs/Data/L20.RData")




# Test 3

url <- "https://byuistats.github.io/M221R/Data/quiz/e3v2/firms.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e3v2/ratings.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e3v2/wake_county.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(firms,
     ratings,
     wake_county,
     file="Data/Exam3.RData")

save(firms,
     ratings,
     wake_county,
     file="docs/Data/Exam3.RData")



# Lesson 21

url <- "https://byuistats.github.io/M221R/Data/math_self_efficacy.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/old_faithful.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
degrees <- data.frame(celsius = c(-40,-20,0,10,20)) %>% mutate(fahrenheit = 9/5*celsius+32)
squares <- data.frame(x = seq(3,-3,-1)) %>% mutate(y = x^2)
url <- "https://byuistats.github.io/M221R/Data/old_faithful.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/math_self_efficacy.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/corr_data.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/madison_county_real_estate.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/body_measurements_corrected.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(math_self_efficacy,
     old_faithful,
     degrees,
     squares,
     old_faithful,
     math_self_efficacy,
     corr_data,
     madison_county_real_estate,
     body_measurements_corrected,
  file="Data/L21.RData")

save(math_self_efficacy,
     old_faithful,
     degrees,
     squares,
     old_faithful,
     math_self_efficacy,
     corr_data,
     madison_county_real_estate,
     body_measurements_corrected,
  file="docs/Data/L21.RData")


# Lesson 22

url <- "https://byuistats.github.io/M221R/Data/estuarine_crocodiles.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/manatees.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/stature.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/oysters.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/math_self_efficacy.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/exam_prep.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/gharial_crocodiles.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(estuarine_crocodiles,
     manatees,
     stature,
     oysters,
     math_self_efficacy,
     exam_prep,
     gharial_crocodiles,
  file="Data/L22.RData")

save(estuarine_crocodiles,
     manatees,
     stature,
     oysters,
     math_self_efficacy,
     exam_prep,
     gharial_crocodiles,
  file="docs/Data/L22.RData")

# Lesson 23

url <- "https://byuistats.github.io/M221R/Data/estuarine_crocodiles.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/manatees.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/Data/oysters.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/Data/linearity.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/Data/cannon_range.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/math_self_efficacy.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/estuarine_crocodiles.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/ad_sales.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/old_faithful.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(estuarine_crocodiles,
     manatees,
     oysters,
     linearity,
     cannon_range,
     math_self_efficacy,
     estuarine_crocodiles,
     ad_sales,
     old_faithful,
  file="Data/L23.RData")

save(estuarine_crocodiles,
     manatees,
     oysters,
     linearity,
     cannon_range,
     math_self_efficacy,
     estuarine_crocodiles,
     ad_sales,
     old_faithful,
  file="docs/Data/L23.RData")

# Lesson 24

url <- "https://byuistats.github.io/M221R/Data/quiz/vehicles.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e2v2/rates_of_return.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/exam_scores.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e4v2/ads.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e4v2/gas.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e4v2/hand_strength.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e4v2/lizards.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e4v2/study_habits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(vehicles,
     rates_of_return,
     exam_scores,
     ads,
     gas,
     hand_strength,
     lizards,
     study_habits,
  file="Data/L24.RData")

save(vehicles,
     rates_of_return,
     exam_scores,
     ads,
     gas,
     hand_strength,
     lizards,
     study_habits,
  file="docs/Data/L24.RData")


# Test 4

url <- "https://byuistats.github.io/M221R/Data/quiz/e4v2/ads.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e4v2/gas.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e4v2/hand_strength.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e4v2/lizards.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/e4v2/study_habits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(ads,
     gas,
     hand_strength,
     lizards,
     study_habits,
     file="Data/Exam4.RData")

save(ads,
     gas,
     hand_strength,
     lizards,
     study_habits,
     file="docs/Data/Exam4.RData")
