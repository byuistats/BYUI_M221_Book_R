library(tidyverse)
library(readxl)

setwd("C:/Users/craigaj/Documents/GitHub/M221R/")


# load(url("https://byuistats.github.io/M221R/M221.RData"))
# 
# 
# load("C:/Users/craigaj/Documents/GitHub/M221R/M221.RData")


# Lesson 3

url <- "https://byuistats.github.io/M221R/data/tuberculosis.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/dist_shapes.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/lesson03/exam1.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/lesson03/grades.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))


save(tuberculosis,
     surgery_lawsuits,
     dist_shapes,
     exam1,
     grades,
  file="data/L03.RData")

save(tuberculosis,
     surgery_lawsuits,
     dist_shapes,
     exam1,
     grades,
  file="docs/data/L03.RData")

# Lesson 4

url <- "https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/dist_shapes.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/lesson03/exam1.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/lesson03/grades.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(surgery_lawsuits,
     dist_shapes,
     exam1,
     grades,
  file="data/L04.RData")

save(surgery_lawsuits,
     dist_shapes,
     exam1,
     grades,
  file="docs/data/L04.RData")


# Lesson 5

url <- "https://byuistats.github.io/M221R/data/batting_averages.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(batting_averages,
  file="data/L05.RData")

save(batting_averages,
  file="docs/data/L05.RData")

# Lesson 7

url <- "https://byuistats.github.io/M221R/data/uranium_plant_lead.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(uranium_plant_lead,
     file="data/L07.RData")

save(uranium_plant_lead,
     file="docs/data/L07.RData")

# Lesson 8

url <- "https://emp.byui.edu/johnsonc/data/hurricane.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/crossroads_purchases.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/e1v2/employees.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(hurricane,
     crossroads_purchases,
     employees,
  file="data/L08.RData")

save(hurricane,
     crossroads_purchases,
     employees,
  file="docs/data/L08.RData")


# Unit 1 Exam

url <- "https://byuistats.github.io/M221R/data/quiz/e1v2/employees.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(employees,
     file="data/Exam1.RData")

save(employees,
     file="docs/data/Exam1.RData")



# Lesson 9

# Textbook
url <- "https://byuistats.github.io/M221R/data/ethan_allen.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/cardiac_arrest.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
# in-class exercises
url <- "https://byuistats.github.io/M221R/data/body_temp.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(ethan_allen,
     body_temp,
     cardiac_arrest,
  file="data/L09.RData")

save(ethan_allen,
     body_temp,
     cardiac_arrest,
  file="docs/data/L09.RData")

# Lesson 10

url <- "https://byuistats.github.io/M221R/data/body_temp.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(body_temp,
  file="data/L10.RData")

save(body_temp,
  file="docs/data/L10.RData")

# Lesson 11

url <- "https://byuistats.github.io/M221R/data/body_temp.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/baby_boom.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/bleu.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/euro.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/old_faithful.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/baby_boom_jse_11.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/body_temp_11.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/nile.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/rates_of_return.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/bleu.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

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
  file="data/L11.RData")

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
  file="docs/data/L11.RData")



# Lesson 12

url <- "https://byuistats.github.io/M221R/data/weight_loss.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/hospital_infections.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/ree.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/direct_flight_costs.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/pine_beetle.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/sleep_drug.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/twin_heights.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/bp_placebo.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/chapter_12_a.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/chapter_12_b.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/women_weights.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/am_pm_heights.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/nba_salaries.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

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
  file="data/L12.RData")

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
  file="docs/data/L12.RData")

# Lesson 13

url <- "https://byuistats.github.io/M221R/data/reading.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/fifa_heart_attacks.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/copd_rehab.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/old_faithful_eras.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/salaries_nursing.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/dentist_bills.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/freshmen_dinner.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/dime_weights.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/iq.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/illinois_birth_weights_two_var.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/direct_flight_costs.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

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
  file="data/L13.RData")

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
  file="docs/data/L13.RData")

# Lesson 14

url <- "https://byuistats.github.io/M221R/data/gratitude.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/soccer_shoes.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
# in-class exercises
url <- "https://emp.byui.edu/johnsonc/data/kindness.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/weight_loss_incentives.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
#
url <- "https://byuistats.github.io/M221R/data/soccer_shoes.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/dasl_hot_dog.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
iris_data <- iris %>% rename(c("sepal_length" = "Sepal.Length", "sepal_width" = "Sepal.Width", "petal_length" = "Petal.Length", "petal_width" = "Petal.Width", "species" = "Species")) %>% mutate(species = str_replace_all(species, "Iris-", ""))
url <- "https://byuistats.github.io/M221R/data/bone_mineral.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(gratitude,
     soccer_shoes,
     kindness,
     weight_loss_incentives,
     soccer_shoes,
     dasl_hot_dog,
     iris_data,
     bone_mineral,
  file="data/L14.RData")

save(gratitude,
     soccer_shoes,
     kindness,
     weight_loss_incentives,
     soccer_shoes,
     dasl_hot_dog,
     iris_data,
     bone_mineral,
  file="docs/data/L14.RData")


# Lesson 15

url <- "https://emp.byui.edu/johnsonc/data/euro_wide.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/center_st_speeds.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/rexburg_pizza.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/dissolved_organic_carbon.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/used_hummers_ny_and_la.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/exercised_bone_density.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/prozac.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/e2v2/cholesterol.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/e2v2/fitness.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/e2v2/calcium.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/e2v2/rates_of_return.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

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
  file="data/L15.RData")

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
  file="docs/data/L15.RData")


# Test 2

url <- "https://byuistats.github.io/M221R/data/quiz/e2v2/cholesterol.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/e2v2/calcium.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/e2v2/fitness.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/e2v2/rates_of_return.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(cholesterol,
     calcium,
     fitness,
     rates_of_return,
     file="data/Exam2.RData")

save(cholesterol,
     calcium,
     fitness,
     rates_of_return,
     file="docs/data/Exam2.RData")


# Lesson 16

url <- "https://byuistats.github.io/M221R/data/grades_gender.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/grades_tally.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/coin_heads.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(grades_gender,
     grades_tally,
     coin_heads,
     file="data/L16.RData")

save(grades_gender,
     grades_tally,
     coin_heads,
     file="docs/data/L16.RData")


# Lesson 17

# URLs_Go_HERE
# 
# save(
#   file="data/L17.RData")
# 
# save(
#   file="docs/data/L17.RData")

# Lesson 18

url <- "https://byuistats.github.io/M221R/data/ptc_tasting.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/lesson18/grades.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(ptc_tasting,
     grades,
  file="data/L18.RData")

save(ptc_tasting,
     grades,
  file="docs/data/L18.RData")

# Lesson 19

url <- "https://byuistats.github.io/M221R/data/chiropractic_care_raw.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
library(carData); titanic <- TitanicSurvival
url <- "https://emp.byui.edu/johnsonc/data/bison.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
library(data.table); df <- data.frame(CJ(style = c(1:4), group = c(1:3))); df$n <- ifelse(df$style == 3 | df$group == 3, 45, 1000) + abs(df$style - df$group) * 0; df$style = paste0("style_", letters[df$style]); df$group = paste0("group_", df$group); hair_styles <- df[rep(row.names(df), df$n), 1:2]; table(hair_styles)
url <- "https://byuistats.github.io/M221R/data/chiropractic_care_raw.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/grades_h19.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))


save(chiropractic_care_raw,
     titanic,
     bison,
     hair_styles,
     chiropractic_care_raw,
     grades_h19,
  file="data/L19.RData")

save(chiropractic_care_raw,
     titanic,
     bison,
     hair_styles,
     chiropractic_care_raw,
     grades_h19,
  file="docs/data/L19.RData")


# Lesson 20

url <- "https://emp.byui.edu/johnsonc/data/lapd_searches.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/morning_people_pexam3_raw.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/bleu.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/TwinWeights.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url))); twin_weights <- TwinWeights %>% select(-"...4") %>% rename(comments = "...5")
url <- "https://byuistats.github.io/M221R/data/quiz/e3v2/ratings.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/e3v2/wake_county.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url))); wake_county <- wake_county %>% rename(comments = "...2")
url <- "https://byuistats.github.io/M221R/data/quiz/e3v2/firms.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))


save(lapd_searches,
     morning_people_pexam3_raw,
     bleu,
     twin_weights,
     ratings,
     wake_county,
     firms,
  file="data/L20.RData")

save(lapd_searches,
     morning_people_pexam3_raw,
     bleu,
     twin_weights,
     ratings,
     wake_county,
     firms,
  file="docs/data/L20.RData")


# Lesson 21

url <- "https://byuistats.github.io/M221R/data/math_self_efficacy.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/old_faithful.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
degrees <- data.frame(celsius = c(-40,-20,0,10,20)) %>% mutate(fahrenheit = 9/5*celsius+32)
squares <- data.frame(x = seq(3,-3,-1)) %>% mutate(y = x^2)
url <- "https://byuistats.github.io/M221R/data/old_faithful.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/math_self_efficacy.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/corr_data.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/madison_county_real_estate.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/body_measurements_corrected.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(math_self_efficacy,
     old_faithful,
     degrees,
     squares,
     old_faithful,
     math_self_efficacy,
     corr_data,
     madison_county_real_estate,
     body_measurements_corrected,
  file="data/L21.RData")

save(math_self_efficacy,
     old_faithful,
     degrees,
     squares,
     old_faithful,
     math_self_efficacy,
     corr_data,
     madison_county_real_estate,
     body_measurements_corrected,
  file="docs/data/L21.RData")


# Lesson 22

url <- "https://byuistats.github.io/M221R/data/estuarine_crocodiles.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/manatees.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/stature.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/oysters.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/math_self_efficacy.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/exam_prep.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/gharial_crocodiles.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(estuarine_crocodiles,
     manatees,
     stature,
     oysters,
     math_self_efficacy,
     exam_prep,
     gharial_crocodiles,
  file="data/L22.RData")

save(estuarine_crocodiles,
     manatees,
     stature,
     oysters,
     math_self_efficacy,
     exam_prep,
     gharial_crocodiles,
  file="docs/data/L22.RData")

# Lesson 23

url <- "https://byuistats.github.io/M221R/data/estuarine_crocodiles.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/manatees.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/oysters.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/linearity.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/cannon_range.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/math_self_efficacy.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/estuarine_crocodiles.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/ad_sales.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/old_faithful.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(estuarine_crocodiles,
     manatees,
     oysters,
     linearity,
     cannon_range,
     math_self_efficacy,
     estuarine_crocodiles,
     ad_sales,
     old_faithful,
  file="data/L23.RData")

save(estuarine_crocodiles,
     manatees,
     oysters,
     linearity,
     cannon_range,
     math_self_efficacy,
     estuarine_crocodiles,
     ad_sales,
     old_faithful,
  file="docs/data/L23.RData")

# Lesson 24

url <- "https://byuistats.github.io/M221R/data/quiz/vehicles.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/rates_of_return.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/exam_scores.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/e4v2/ads.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/e4v2/gas.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/e4v2/hand_strength.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/e4v2/lizards.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/e4v2/study_habits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(vehicles,
     rates_of_return,
     exam_scores,
     ads,
     gas,
     hand_strength,
     lizards,
     study_habits,
  file="data/L24.RData")

save(vehicles,
     rates_of_return,
     exam_scores,
     ads,
     gas,
     hand_strength,
     lizards,
     study_habits,
  file="docs/data/L24.RData")