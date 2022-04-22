url <- "https://byuistats.github.io/M221R/data/tuberculosis.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/BattingAverages.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

url <- "https://byuistats.github.io/M221R/data/uranium_plant_lead.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))


url <- "https://emp.byui.edu/johnsonc/data/dist_shapes.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://emp.byui.edu/johnsonc/data/dist_shapes.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))



url <- "https://emp.byui.edu/johnsonc/data/hurricane.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))




url <- "https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/exam_1_scores.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/grades_lesson_3.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/M221R/data/exam_1_scores.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
url <- "https://byuistats.github.io/BYUI_M221_Book/Data/Grades_L3_hw_quiz.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

url <- "https://byuistats.github.io/M221R/data/crossroads_purchases.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

url <- "https://byuistats.github.io/M221R/data/quiz/e1v2/employees.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))



# # MADE IT THROUGH PRACTICE EXAM 2
# 
# 
# library(readxl)
# url <- "https://byuistats.github.io/BYUI_M221_Book/Data/MysteryInvestmentOpportunities.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))
# 
# # View(MysteryInvestmentOpportunities)
# 
# # WrongSiteWrongPatient
# library(readxl)
# url <- "https://byuistats.github.io/BYUI_M221_Book/Data/WrongSiteWrongPatient.xlsx"
# destfile <- "WrongSiteWrongPatient.xlsx"
# curl::curl_download(url, destfile)
# WrongSiteWrongPatient <- read_excel(destfile)
# # View(WrongSiteWrongPatient)
# 
# # Grades_L3_hw_quiz
# library(readxl)
# url <- "https://byuistats.github.io/BYUI_M221_Book/Data/Grades_L3_hw_quiz.xlsx"
# destfile <- "Grades_L3_hw_quiz.xlsx"
# curl::curl_download(url, destfile)
# Grades_L3_hw_quiz <- read_excel(destfile)
# # View(Grades_L3_hw_quiz)
# 
# # exam1_employees
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/exam1_employees.xlsx"
# destfile <- "exam1_employees.xlsx"
# curl::curl_download(url, destfile)
# exam1_employees <- read_excel(destfile)
# # View(exam1_employees)
# 
# # baby_boom_jse_11
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/quiz/baby_boom_jse_11.xlsx"
# destfile <- "baby_boom_jse_11.xlsx"
# curl::curl_download(url, destfile)
# baby_boom_jse_11 <- read_excel(destfile)
# # View(baby_boom_jse_11)
# 
# # body_temp_11
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/quiz/body_temp_11.xlsx"
# destfile <- "body_temp_11.xlsx"
# curl::curl_download(url, destfile)
# body_temp_11 <- read_excel(destfile)
# # View(body_temp_11)
# 
# # rates_of_return
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/rates_of_return.xlsx"
# destfile <- "rates_of_return.xlsx"
# curl::curl_download(url, destfile)
# rates_of_return <- read_excel(destfile)
# # View(rates_of_return)
# 
# # bleu
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/bleu.xlsx"
# destfile <- "bleu.xlsx"
# curl::curl_download(url, destfile)
# bleu <- read_excel(destfile)
# # View(bleu)
# 
# # chapter_12_a
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/quiz/chapter_12_a.xlsx"
# destfile <- "chapter_12_a.xlsx"
# curl::curl_download(url, destfile)
# chapter_12_a <- read_excel(destfile)
# # View(chapter_12_a)
# 
# # chapter_12_b
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/quiz/chapter_12_b.xlsx"
# destfile <- "chapter_12_b.xlsx"
# curl::curl_download(url, destfile)
# chapter_12_b <- read_excel(destfile)
# # View(chapter_12_b)
# 
# # women_weights
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/quiz/women_weights.xlsx"
# destfile <- "women_weights.xlsx"
# curl::curl_download(url, destfile)
# women_weights <- read_excel(destfile)
# # View(women_weights)
# 
# # am_pm_heights
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/am_pm_heights.xlsx"
# destfile <- "am_pm_heights.xlsx"
# curl::curl_download(url, destfile)
# am_pm_heights <- read_excel(destfile)
# # View(am_pm_heights)
# 
# # nba_salaries
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/nba_salaries.xlsx"
# destfile <- "nba_salaries.xlsx"
# curl::curl_download(url, destfile)
# nba_salaries <- read_excel(destfile)
# # View(nba_salaries)
# 
# # dentist_bills
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/dentist_bills.xlsx"
# destfile <- "dentist_bills.xlsx"
# curl::curl_download(url, destfile)
# dentist_bills <- read_excel(destfile)
# # View(dentist_bills)
# 
# # freshmen_dinner
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/freshmen_dinner.xlsx"
# destfile <- "freshmen_dinner.xlsx"
# curl::curl_download(url, destfile)
# freshmen_dinner <- read_excel(destfile)
# # View(freshmen_dinner)
# 
# # dime_weights
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/quiz/dime_weights.xlsx"
# destfile <- "dime_weights.xlsx"
# curl::curl_download(url, destfile)
# dime_weights <- read_excel(destfile)
# # View(dime_weights)
# 
# # iq
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/quiz/iq.xlsx"
# destfile <- "iq.xlsx"
# curl::curl_download(url, destfile)
# iq <- read_excel(destfile)
# # View(iq)
# 
# # illinois_birth_weights_two_var
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/illinois_birth_weights_two_var.xlsx"
# destfile <- "illinois_birth_weights_two_var.xlsx"
# curl::curl_download(url, destfile)
# illinois_birth_weights_two_var <- read_excel(destfile)
# # View(illinois_birth_weights_two_var)
# 
# # direct_flight_costs
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/direct_flight_costs.xlsx"
# destfile <- "direct_flight_costs.xlsx"
# curl::curl_download(url, destfile)
# direct_flight_costs <- read_excel(destfile)
# # View(direct_flight_costs)
# 
# # soccer_shoes
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/soccer_shoes.xlsx"
# destfile <- "soccer_shoes.xlsx"
# curl::curl_download(url, destfile)
# soccer_shoes <- read_excel(destfile)
# # View(soccer_shoes)
# 
# # dasl_hot_dog
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/dasl_hot_dog.xlsx"
# destfile <- "dasl_hot_dog.xlsx"
# curl::curl_download(url, destfile)
# dasl_hot_dog <- read_excel(destfile)
# # View(dasl_hot_dog)
# 
# # bone_mineral
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/bone_mineral.xlsx"
# destfile <- "bone_mineral.xlsx"
# curl::curl_download(url, destfile)
# bone_mineral <- read_excel(destfile)
# # View(bone_mineral)
# 
# # dissolved_organic_carbon
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/dissolved_organic_carbon.xlsx"
# destfile <- "dissolved_organic_carbon.xlsx"
# curl::curl_download(url, destfile)
# dissolved_organic_carbon <- read_excel(destfile)
# # View(dissolved_organic_carbon)
# 
# # used_hummers_ny_and_la
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/used_hummers_ny_and_la.xlsx"
# destfile <- "used_hummers_ny_and_la.xlsx"
# curl::curl_download(url, destfile)
# used_hummers_ny_and_la <- read_excel(destfile)
# # View(used_hummers_ny_and_la)
# 
# # exercised_bone_density
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/exercised_bone_density.xlsx"
# destfile <- "exercised_bone_density.xlsx"
# curl::curl_download(url, destfile)
# exercised_bone_density <- read_excel(destfile)
# # View(exercised_bone_density)
# 
# # prozac
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/prozac.xlsx"
# destfile <- "prozac.xlsx"
# curl::curl_download(url, destfile)
# prozac <- read_excel(destfile)
# # View(prozac)
# 
# # 
# 
# 
# 
# # CANVAS LINKS
# 
# # L3/L4 Teaching Notes, "Class Survey Data"
# # https://byui.instructure.com/courses/169896/files/75954538?wrap=1
# 
# # L3/L4 Team Quizzes, "Exam 1 Scores"
# # https://byui.instructure.com/courses/169896/files/75955368/download?wrap=1
# 
# # L3 HW Quiz, "Grades"
# # https://byui.instructure.com/courses/169896/files/75954880/download?wrap=1
# 
# # Practice Exam 1, "CrossroadsPurchases"
# # https://byui.instructure.com/courses/169896/files/75954890/download?wrap=1
# 
# # L11 Teaching Notes
# # https://byui.instructure.com/courses/169896/files/75955202?wrap=1
# 
# # L12 Teaching Notes
# # https://byui.instructure.com/courses/169896/files/75955266?wrap=1
# # https://byui.instructure.com/courses/169896/files/75955182?wrap=1
# 
# # L13 Teaching Notes
# # https://byui.instructure.com/courses/169896/files/75955358?wrap=1
# # https://byui.instructure.com/courses/169896/files/75955184?wrap=1
# 
# # L14 Teaching Notes
# # https://byui.instructure.com/courses/169896/files/75955362?wrap=1
# # https://byui.instructure.com/courses/169896/files/75955360?wrap=1
# 
# # L14 Team Quiz
# # https://byui.instructure.com/courses/169896/files/78993248?wrap=1
# 
# # ERRORS
# 
# # Broken Links:
# # L3 Prep Quiz, Wrong Site Wrong Patient
# # L11 Team Quiz, Nile
# 
# # Excel Ques.: Lesson 4 Team Quiz, Q1c\\
# 
# # FROM TEXTBOOK
# 
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/surgery_lawsuits.xlsx"
# destfile <- "surgery_lawsuits.xlsx"
# curl::curl_download(url, destfile)
# surgery_lawsuits <- read_excel(destfile)
# 
# library(readxl)
# url <- "https://byuistats.github.io/M221R/data/tuberculosis.xlsx"
# destfile <- "tuberculosis.xlsx"
# curl::curl_download(url, destfile)
# tuberculosis <- read_excel(destfile)
# 
# 
# library(readxl)
# url <- "https://emp.byui.edu/johnsonc/data/dist_shapes.xlsx"
# destfile <- "dist_shapes.xlsx"
# curl::curl_download(url, destfile)
# dist_shapes <- read_excel(destfile)


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

# load(url("https://byuistats.github.io/M221R/M221.RData"))
# 
# 
# load("C:/Users/craigaj/Documents/GitHub/M221R/M221.RData")

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




url <- "https://byuistats.github.io/M221R/data/batting_averages.xlsx"; curl::curl_download(url, basename(url)); assign(tools::file_path_sans_ext(basename(url)), read_excel(basename(url)))

save(batting_averages,
  file="L05.RData")

save(batting_averages,
  file="docs/L05.RData")

