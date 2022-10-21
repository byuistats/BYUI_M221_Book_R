library(tidyverse)
library(readxl)
library(rio)

setwd("C:/Users/craigaj/Documents/GitHub/M221R/")


# load(url("https://byuistats.github.io/M221R/M221.RData"))
# 
# 
# load("C:/Users/craigaj/Documents/GitHub/M221R/M221.RData")


# Lesson 3

tuberculosis <- rio::import("https://byuistats.github.io/M221R/Data/tuberculosis.xlsx")
surgery_lawsuits <- rio::import("https://byuistats.github.io/M221R/Data/surgery_lawsuits.xlsx")
dist_shapes <- rio::import("https://emp.byui.edu/johnsonc/Data/dist_shapes.xlsx")
surgery_lawsuits <- rio::import("https://byuistats.github.io/M221R/Data/surgery_lawsuits.xlsx")
exam1 <- rio::import("https://byuistats.github.io/M221R/Data/quiz/lesson03/exam1.xlsx")
grades <- rio::import("https://byuistats.github.io/M221R/Data/quiz/lesson03/grades.xlsx")
surgery_lawsuits <- rio::import("https://byuistats.github.io/M221R/Data/surgery_lawsuits.xlsx")


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

surgery_lawsuits <- rio::import("https://byuistats.github.io/M221R/Data/surgery_lawsuits.xlsx")
dist_shapes <- rio::import("https://emp.byui.edu/johnsonc/Data/dist_shapes.xlsx")
surgery_lawsuits <- rio::import("https://byuistats.github.io/M221R/Data/surgery_lawsuits.xlsx")
exam1 <- rio::import("https://byuistats.github.io/M221R/Data/quiz/lesson03/exam1.xlsx")
grades <- rio::import("https://byuistats.github.io/M221R/Data/quiz/lesson03/grades.xlsx")

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

batting_averages <- rio::import("https://byuistats.github.io/M221R/Data/batting_averages.xlsx")

save(batting_averages,
     file="Data/L05.RData")

save(batting_averages,
     file="docs/Data/L05.RData")

# Lesson 7

uranium_plant_lead <- rio::import("https://byuistats.github.io/M221R/Data/uranium_plant_lead.xlsx")

save(uranium_plant_lead,
     file="Data/L07.RData")

save(uranium_plant_lead,
     file="docs/Data/L07.RData")

# Lesson 8

hurricane <- rio::import("https://emp.byui.edu/johnsonc/Data/hurricane.xlsx")
crossroads_purchases <- rio::import("https://byuistats.github.io/M221R/Data/crossroads_purchases.xlsx")
employees <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e1v2/employees.xlsx")

save(hurricane,
     crossroads_purchases,
     employees,
     file="Data/L08.RData")

save(hurricane,
     crossroads_purchases,
     employees,
     file="docs/Data/L08.RData")


# Unit 1 Exam

study_hours <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e1v3/study_hours.xlsx")

save(study_hours,
     file="Data/Exam1.RData")
save(study_hours,
     file="docs/Data/Exam1.RData")

# https://byuistats.github.io/M221R/Data/quiz/e1v2/employees.xlsx
# 
# save(employees,
#      file="Data/Exam1.RData")
# 
# save(employees,
#      file="docs/Data/Exam1.RData")



# Lesson 9

# Textbook
ethan_allen <- rio::import("https://byuistats.github.io/M221R/Data/ethan_allen.xlsx")
cardiac_arrest <- rio::import("https://byuistats.github.io/M221R/Data/cardiac_arrest.xlsx")
# in-class exercises
body_temp <- rio::import("https://byuistats.github.io/M221R/Data/body_temp.xlsx")

save(ethan_allen,
     body_temp,
     cardiac_arrest,
     file="Data/L09.RData")

save(ethan_allen,
     body_temp,
     cardiac_arrest,
     file="docs/Data/L09.RData")

# Lesson 10

body_temp <- rio::import("https://byuistats.github.io/M221R/Data/body_temp.xlsx")

save(body_temp,
     file="Data/L10.RData")

save(body_temp,
     file="docs/Data/L10.RData")

# Lesson 11

body_temp <- rio::import("https://byuistats.github.io/M221R/Data/body_temp.xlsx")
baby_boom <- rio::import("https://byuistats.github.io/M221R/Data/baby_boom.xlsx")
bleu <- rio::import("https://byuistats.github.io/M221R/Data/bleu.xlsx")
euro <- rio::import("https://byuistats.github.io/M221R/Data/euro.xlsx")
old_faithful <- rio::import("https://emp.byui.edu/johnsonc/Data/old_faithful.xlsx")
baby_boom_jse_11 <- rio::import("https://byuistats.github.io/M221R/Data/quiz/baby_boom_jse_11.xlsx")
body_temp_11 <- rio::import("https://byuistats.github.io/M221R/Data/quiz/body_temp_11.xlsx")
nile <- rio::import("https://byuistats.github.io/M221R/Data/quiz/nile.xlsx")
rates_of_return <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e2v2/rates_of_return.xlsx")
bleu <- rio::import("https://byuistats.github.io/M221R/Data/bleu.xlsx")

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

weight_loss <- rio::import("https://byuistats.github.io/M221R/Data/weight_loss.xlsx")
hospital_infections <- rio::import("https://byuistats.github.io/M221R/Data/hospital_infections.xlsx")
ree <- rio::import("https://byuistats.github.io/M221R/Data/ree.xlsx")
direct_flight_costs <- rio::import("https://byuistats.github.io/M221R/Data/direct_flight_costs.xlsx")
pine_beetle <- rio::import("https://byuistats.github.io/M221R/Data/pine_beetle.xlsx")
sleep_drug <- rio::import("https://byuistats.github.io/M221R/Data/sleep_drug.xlsx")
twin_heights <- rio::import("https://byuistats.github.io/M221R/Data/twin_heights.xlsx")
bp_placebo <- rio::import("https://emp.byui.edu/johnsonc/Data/bp_placebo.xlsx")
chapter_12_a <- rio::import("https://byuistats.github.io/M221R/Data/quiz/chapter_12_a.xlsx")
chapter_12_b <- rio::import("https://byuistats.github.io/M221R/Data/quiz/chapter_12_b.xlsx")
women_weights <- rio::import("https://byuistats.github.io/M221R/Data/quiz/women_weights.xlsx")
am_pm_heights <- rio::import("https://byuistats.github.io/M221R/Data/am_pm_heights.xlsx")
nba_salaries <- rio::import("https://byuistats.github.io/M221R/Data/nba_salaries.xlsx")

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

reading <- rio::import("https://byuistats.github.io/M221R/Data/reading.xlsx")
fifa_heart_attacks <- rio::import("https://byuistats.github.io/M221R/Data/fifa_heart_attacks.xlsx")
copd_rehab <- rio::import("https://byuistats.github.io/M221R/Data/copd_rehab.xlsx")
old_faithful_eras <- rio::import("https://emp.byui.edu/johnsonc/Data/old_faithful_eras.xlsx")
salaries_nursing <- rio::import("https://emp.byui.edu/johnsonc/Data/salaries_nursing.xlsx")
dentist_bills <- rio::import("https://byuistats.github.io/M221R/Data/dentist_bills.xlsx")
freshmen_dinner <- rio::import("https://byuistats.github.io/M221R/Data/freshmen_dinner.xlsx")
dime_weights <- rio::import("https://byuistats.github.io/M221R/Data/quiz/dime_weights.xlsx")
iq <- rio::import("https://byuistats.github.io/M221R/Data/quiz/iq.xlsx")
illinois_birth_weights_two_var <- rio::import("https://byuistats.github.io/M221R/Data/illinois_birth_weights_two_var.xlsx")
direct_flight_costs <- rio::import("https://byuistats.github.io/M221R/Data/direct_flight_costs.xlsx")

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

gratitude <- rio::import("https://byuistats.github.io/M221R/Data/gratitude.xlsx")
soccer_shoes <- rio::import("https://byuistats.github.io/M221R/Data/soccer_shoes.xlsx")
# in-class exercises
kindness <- rio::import("https://emp.byui.edu/johnsonc/Data/kindness.xlsx")
weight_loss_incentives <- rio::import("https://emp.byui.edu/johnsonc/Data/weight_loss_incentives.xlsx")
#
soccer_shoes <- rio::import("https://byuistats.github.io/M221R/Data/soccer_shoes.xlsx")
dasl_hot_dog <- rio::import("https://byuistats.github.io/M221R/Data/dasl_hot_dog.xlsx")
iris_data <- iris %>% rename(c("sepal_length" = "Sepal.Length", "sepal_width" = "Sepal.Width", "petal_length" = "Petal.Length", "petal_width" = "Petal.Width", "species" = "Species")) %>% mutate(species = str_replace_all(species, "Iris-", ""))
bone_mineral <- rio::import("https://byuistats.github.io/M221R/Data/bone_mineral.xlsx")

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

euro_wide <- rio::import("https://emp.byui.edu/johnsonc/Data/euro_wide.xlsx")
center_st_speeds <- rio::import("https://emp.byui.edu/johnsonc/Data/center_st_speeds.xlsx")
rexburg_pizza <- rio::import("https://emp.byui.edu/johnsonc/Data/rexburg_pizza.xlsx")
dissolved_organic_carbon <- rio::import("https://byuistats.github.io/M221R/Data/dissolved_organic_carbon.xlsx")
used_hummers_ny_and_la <- rio::import("https://byuistats.github.io/M221R/Data/used_hummers_ny_and_la.xlsx")
exercised_bone_density <- rio::import("https://byuistats.github.io/M221R/Data/exercised_bone_density.xlsx")
prozac <- rio::import("https://byuistats.github.io/M221R/Data/prozac.xlsx")
cholesterol <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e2v2/cholesterol.xlsx")
fitness <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e2v2/fitness.xlsx")
calcium <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e2v2/calcium.xlsx")
rates_of_return <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e2v2/rates_of_return.xlsx")

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


# Test 2====

crabs <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e2v3/crabs.xlsx")
transactions <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e2v3/transactions.xlsx")
vehicles <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e2v3/vehicles.xlsx")
voltage <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e2v3/voltage.xlsx")
rates_of_return <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e2v3/rates_of_return.xlsx")

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

grades_gender <- rio::import("https://byuistats.github.io/M221R/Data/grades_gender.xlsx")
grades_tally <- rio::import("https://byuistats.github.io/M221R/Data/grades_tally.xlsx")
coin_heads <- rio::import("https://byuistats.github.io/M221R/Data/coin_heads.xlsx")

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

ptc_tasting <- rio::import("https://byuistats.github.io/M221R/Data/ptc_tasting.xlsx")
grades <- rio::import("https://byuistats.github.io/M221R/Data/quiz/lesson18/grades.xlsx")

save(ptc_tasting,
     grades,
     file="Data/L18.RData")

save(ptc_tasting,
     grades,
     file="docs/Data/L18.RData")

# Lesson 19

chiropractic_care_raw <- rio::import("https://byuistats.github.io/M221R/Data/chiropractic_care_raw.xlsx")
library(carData); titanic <- TitanicSurvival
bison <- rio::import("https://emp.byui.edu/johnsonc/Data/bison.xlsx")
library(data.table); df <- data.frame(CJ(style = c(1:4), group = c(1:3))); df$n <- ifelse(df$style == 3 | df$group == 3, 45, 1000) + abs(df$style - df$group) * 0; df$style = paste0("style_", letters[df$style]); df$group = paste0("group_", df$group); hair_styles <- df[rep(row.names(df), df$n), 1:2]; table(hair_styles)
chiropractic_care_raw <- rio::import("https://byuistats.github.io/M221R/Data/chiropractic_care_raw.xlsx")
grades_h19 <- rio::import("https://byuistats.github.io/M221R/Data/quiz/grades_h19.xlsx")


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

lapd_searches <- rio::import("https://emp.byui.edu/johnsonc/Data/lapd_searches.xlsx")
morning_people_pexam3_raw <- rio::import("https://byuistats.github.io/M221R/Data/quiz/morning_people_pexam3_raw.xlsx")
bleu <- rio::import("https://byuistats.github.io/M221R/Data/bleu.xlsx")
TwinWeights <- rio::import("https://byuistats.github.io/M221R/Data/TwinWeights.xlsx"); twin_weights <- TwinWeights %>% select(-"...4") %>% rename(comments = "...5")
ratings <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e3v2/ratings.xlsx")
wake_county <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e3v2/wake_county.xlsx"); wake_county <- wake_county %>% rename(comments = "...2")
firms <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e3v2/firms.xlsx")


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

firms <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e3v2/firms.xlsx")
ratings <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e3v2/ratings.xlsx")
wake_county <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e3v2/wake_county.xlsx")

save(firms,
     ratings,
     wake_county,
     file="Data/Exam3.RData")

save(firms,
     ratings,
     wake_county,
     file="docs/Data/Exam3.RData")



# Lesson 21

math_self_efficacy <- rio::import("https://byuistats.github.io/M221R/Data/math_self_efficacy.xlsx")
old_faithful <- rio::import("https://byuistats.github.io/M221R/Data/old_faithful.xlsx")
degrees <- data.frame(celsius = c(-40,-20,0,10,20)) %>% mutate(fahrenheit = 9/5*celsius+32)
squares <- data.frame(x = seq(3,-3,-1)) %>% mutate(y = x^2)
old_faithful <- rio::import("https://byuistats.github.io/M221R/Data/old_faithful.xlsx")
math_self_efficacy <- rio::import("https://byuistats.github.io/M221R/Data/math_self_efficacy.xlsx")
corr_data <- rio::import("https://byuistats.github.io/M221R/Data/quiz/corr_data.xlsx")
madison_county_real_estate <- rio::import("https://byuistats.github.io/M221R/Data/madison_county_real_estate.xlsx")
body_measurements_corrected <- rio::import("https://byuistats.github.io/M221R/Data/body_measurements_corrected.xlsx")

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

estuarine_crocodiles <- rio::import("https://byuistats.github.io/M221R/Data/estuarine_crocodiles.xlsx")
manatees <- rio::import("https://byuistats.github.io/M221R/Data/manatees.xlsx")
stature <- rio::import("https://byuistats.github.io/M221R/Data/stature.xlsx")
oysters <- rio::import("https://byuistats.github.io/M221R/Data/oysters.xlsx")
math_self_efficacy <- rio::import("https://byuistats.github.io/M221R/Data/math_self_efficacy.xlsx")
exam_prep <- rio::import("https://byuistats.github.io/M221R/Data/quiz/exam_prep.xlsx")
gharial_crocodiles <- rio::import("https://byuistats.github.io/M221R/Data/gharial_crocodiles.xlsx")

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

estuarine_crocodiles <- rio::import("https://byuistats.github.io/M221R/Data/estuarine_crocodiles.xlsx")
manatees <- rio::import("https://byuistats.github.io/M221R/Data/manatees.xlsx")
oysters <- rio::import("https://emp.byui.edu/johnsonc/Data/oysters.xlsx")
linearity <- rio::import("https://emp.byui.edu/johnsonc/Data/linearity.xlsx")
cannon_range <- rio::import("https://emp.byui.edu/johnsonc/Data/cannon_range.xlsx")
math_self_efficacy <- rio::import("https://byuistats.github.io/M221R/Data/math_self_efficacy.xlsx")
estuarine_crocodiles <- rio::import("https://byuistats.github.io/M221R/Data/estuarine_crocodiles.xlsx")
ad_sales <- rio::import("https://byuistats.github.io/M221R/Data/quiz/ad_sales.xlsx")
old_faithful <- rio::import("https://byuistats.github.io/M221R/Data/old_faithful.xlsx")

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

vehicles <- rio::import("https://byuistats.github.io/M221R/Data/quiz/vehicles.xlsx")
rates_of_return <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e2v2/rates_of_return.xlsx")
exam_scores <- rio::import("https://byuistats.github.io/M221R/Data/exam_scores.xlsx")
ads <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e4v2/ads.xlsx")
gas <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e4v2/gas.xlsx")
hand_strength <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e4v2/hand_strength.xlsx")
lizards <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e4v2/lizards.xlsx")
study_habits <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e4v2/study_habits.xlsx")

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

ads <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e4v2/ads.xlsx")
gas <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e4v2/gas.xlsx")
hand_strength <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e4v2/hand_strength.xlsx")
lizards <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e4v2/lizards.xlsx")
study_habits <- rio::import("https://byuistats.github.io/M221R/Data/quiz/e4v2/study_habits.xlsx")

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




