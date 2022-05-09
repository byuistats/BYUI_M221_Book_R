library(readxl)

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


setwd("C:/Users/craigaj/Documents/GitHub/M221R/")

getwd()

save(tuberculosis,
     surgery_lawsuits,
     dist_shapes,
     
     exam1,
     grades,
  file="L03.RData")

save(tuberculosis,
     surgery_lawsuits,
     dist_shapes,
     
     exam1,
     grades,
  file="docs/L03.RData")

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
  file="L04.RData")

save(surgery_lawsuits,
     dist_shapes,
     
     exam1,
     grades,
  file="docs/L04.RData")


# Lesson 5

url <- "https://byuistats.github.io/M221R/data/batting_averages.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(batting_averages,
  file="L05.RData")

save(batting_averages,
  file="docs/L05.RData")

# Lesson 7

url <- "https://byuistats.github.io/M221R/data/uranium_plant_lead.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(uranium_plant_lead,
     file="L07.RData")

save(uranium_plant_lead,
     file="docs/L07.RData")

# Lesson 8

url <- "https://emp.byui.edu/johnsonc/data/hurricane.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/crossroads_purchases.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/e1v2/employees.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(hurricane,
     crossroads_purchases,
     employees,
  file="L08.RData")

save(hurricane,
     crossroads_purchases,
     employees,
  file="docs/L08.RData")


# Unit 1 Exam

url <- "https://byuistats.github.io/M221R/data/quiz/e1v2/employees.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(employees,
     file="Exam1_X2d0l09QO.RData")




# Lesson 9

url <- "https://byuistats.github.io/M221R/data/ethan_allen.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/body_temp.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/cardiac_arrest.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/body_temp.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(ethan_allen,
     body_temp,
     cardiac_arrest,
     body_temp,
  file="L09.RData")

save(ethan_allen,
     body_temp,
     cardiac_arrest,
     body_temp,
  file="docs/L09.RData")

# Lesson 10

URLs_Go_HERE

save(
  file="L10.RData")

save(
  file="docs/L10.RData")

# Lesson 11

url <- "https://byuistats.github.io/M221R/data/body_temp.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/baby_boom.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/bleu.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/euro.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/old_faithful.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/baby_boom_jse_11.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/quiz/body_temp_11.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/Data/quiz/nile.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/rates_of_return.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
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
  file="L11.RData")

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
  file="docs/L11.RData")



# Lesson 12

url <- "https://byuistats.github.io/M221R/data/weight_loss.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/hospital_infections.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/ree.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/direct_flight_costs.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/pine_beetle.xslx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/sleep.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
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
     sleep,
     twin_heights,
     bp_placebo,
     chapter_12_a,
     chapter_12_b,
     women_weights,
     am_pm_heights,
     nba_salaries,
  file="L12.RData")

save(weight_loss,
     hospital_infections,
     ree,
     direct_flight_costs,
     pine_beetle,
     sleep,
     twin_heights,
     bp_placebo,
     chapter_12_a,
     chapter_12_b,
     women_weights,
     am_pm_heights,
     nba_salaries,
  file="docs/L12.RData")

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
  file="L13.RData")

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
  file="docs/L13.RData")

# Lesson 14

url <- "https://byuistats.github.io/M221R/data/gratitude.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/soccer_shoes.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/kindness.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/weight_loss_incentives.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/soccer_shoes.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/dasl_hot_dog.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byui.instructure.com/courses/184480/files/84606950?wrap=1"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/bone_mineral.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(gratitude,
     soccer_shoes,
     kindness,
     weight_loss_incentives,
     soccer_shoes,
     dasl_hot_dog,
     84606950?w,
     bone_mineral,
  file="L14.RData")

save(gratitude,
     soccer_shoes,
     kindness,
     weight_loss_incentives,
     soccer_shoes,
     dasl_hot_dog,
     84606950?w,
     bone_mineral,
  file="docs/L14.RData")

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
  file="L15.RData")

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
  file="docs/L15.RData")

# Lesson 16

url <- "https://byuistats.github.io/M221R/data/grades_gender.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/grades_tally.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/coin_heads.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(grades_gender,
     grades_tally,
     coin_heads,
  file="L16.RData")

save(grades_gender,
     grades_tally,
     coin_heads,
  file="docs/L16.RData")

# Lesson 17

URLs_Go_HERE

save(
  file="L17.RData")

save(
  file="docs/L17.RData")

# Lesson 18

url <- "https://byuistats.github.io/M221R/data/ptc_tasting.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/lesson18/grades.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(ptc_tasting,
     grades,
  file="L18.RData")

save(ptc_tasting,
     grades,
  file="docs/L18.RData")

# Lesson 19

URLs_Go_HERE

save(
  file="L19.RData")

save(
  file="docs/L19.RData")

# Lesson 20

URLs_Go_HERE

save(
  file="L20.RData")

save(
  file="docs/L20.RData")

# Lesson 21

URLs_Go_HERE

save(
  file="L21.RData")

save(
  file="docs/L21.RData")

# Lesson 22

URLs_Go_HERE

save(
  file="L22.RData")

save(
  file="docs/L22.RData")

# Lesson 23

URLs_Go_HERE

save(
  file="L23.RData")

save(
  file="docs/L23.RData")

# Lesson 24

URLs_Go_HERE

save(
  file="L24.RData")

save(
  file="docs/L24.RData")