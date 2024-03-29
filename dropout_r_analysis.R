#Importing libraries
library(tidyverse)
library(stringr)
library(janitor)
library(ggExtra)

#Reading and cleaning data
data <- read_csv("dataset.csv")
data <- data |>
  clean_names()
data <- data |>
  rename(nationality = nacionality)

#Fixing categorical columns to have strings instead of integers
data$international <- str_replace(data$international, "0", "no")
data$international <- str_replace(data$international, "1", "yes")

data$scholarship_holder <- str_replace(data$scholarship_holder, "0", "no")
data$scholarship_holder <- str_replace(data$scholarship_holder, "1", "yes")

data$tuition_fees_up_to_date <- str_replace(data$tuition_fees_up_to_date, "0", "no")
data$tuition_fees_up_to_date <- str_replace(data$tuition_fees_up_to_date, "1", "yes")

data$debtor <- str_replace(data$debtor, "0", "no")
data$debtor <- str_replace(data$debtor, "1", "yes")

data$educational_special_needs <- str_replace(data$educational_special_needs, "0", "no")
data$educational_special_needs <- str_replace(data$educational_special_needs, "1", "yes")

data$displaced <- str_replace(data$displaced, "0", "no")
data$displaced <- str_replace(data$displaced, "1", "yes")

data$daytime_evening_attendance <- str_replace(data$daytime_evening_attendance, "0", "evening")
data$daytime_evening_attendance <- str_replace(data$daytime_evening_attendance, "1", "daytime")

data$gender <- str_replace(data$gender, "0", "female")
data$gender <- str_replace(data$gender, "1", "male")

data$fathers_occupation <- str_replace(data$fathers_occupation, "46", "Street vendors (except food) and street service providers")
data$fathers_occupation <- str_replace(data$fathers_occupation, "45", "Meal preparation assistants")
data$fathers_occupation <- str_replace(data$fathers_occupation, "44", "Unskilled workers in extractive industry, construction, manufacturing, and transport")
data$fathers_occupation <- str_replace(data$fathers_occupation, "43", "Unskilled workers in agriculture, animal production, and fisheries and forestry")
data$fathers_occupation <- str_replace(data$fathers_occupation, "42", "Vehicle drivers and mobile equipment operators")
data$fathers_occupation <- str_replace(data$fathers_occupation, "41", "Assembly workers")
data$fathers_occupation <- str_replace(data$fathers_occupation, "40", "Fixed plant and machine operators")
data$fathers_occupation <- str_replace(data$fathers_occupation, "39", "Workers in food processing, woodworking, and clothing and other industries and crafts")
data$fathers_occupation <- str_replace(data$fathers_occupation, "38", "Skilled workers in electricity and electronics")
data$fathers_occupation <- str_replace(data$fathers_occupation, "37", "Skilled workers in metallurgy, metalworking, and similar")
data$fathers_occupation <- str_replace(data$fathers_occupation, "36", "Skilled construction workers and the like, except electricians")
data$fathers_occupation <- str_replace(data$fathers_occupation, "35", "Farmers, livestock keepers, fishermen, hunters and gatherers, and subsistence")
data$fathers_occupation <- str_replace(data$fathers_occupation, "34", "Market-oriented farmers and skilled agricultural and animal production workers")
data$fathers_occupation <- str_replace(data$fathers_occupation, "33", "Protection and security services personnel")
data$fathers_occupation <- str_replace(data$fathers_occupation, "32", "Personal care workers and the like")
data$fathers_occupation <- str_replace(data$fathers_occupation, "31", "Sellers")
data$fathers_occupation <- str_replace(data$fathers_occupation, "30", "Personal service workers")
data$fathers_occupation <- str_replace(data$fathers_occupation, "29", "Other administrative support staff")
data$fathers_occupation <- str_replace(data$fathers_occupation, "28", "Data, accounting, statistical, financial services, and registry-related operators")
data$fathers_occupation <- str_replace(data$fathers_occupation, "27", "Office workers, secretaries in general, and data processing operators")
data$fathers_occupation <- str_replace(data$fathers_occupation, "26", "Information and communication technology technicians")
data$fathers_occupation <- str_replace(data$fathers_occupation, "25", "Intermediate level technicians from legal, social, sports, cultural, and similar services")
data$fathers_occupation <- str_replace(data$fathers_occupation, "24", "Technicians and professionals of intermediate level of health")
data$fathers_occupation <- str_replace(data$fathers_occupation, "23", "Intermediate level science and engineering technicians and professions")
data$fathers_occupation <- str_replace(data$fathers_occupation, "22", "Specialists in finance, accounting, administrative organization, and public and commercial relations")
data$fathers_occupation <- str_replace(data$fathers_occupation, "21", "Teachers")
data$fathers_occupation <- str_replace(data$fathers_occupation, "20", "Health professionals")
data$fathers_occupation <- str_replace(data$fathers_occupation, "19", "Specialists in the physical sciences, mathematics, engineering, and related techniques")
data$fathers_occupation <- str_replace(data$fathers_occupation, "18", "Hotel, catering, trade, and other services directors")
data$fathers_occupation <- str_replace(data$fathers_occupation, "17", "Directors of administrative and commercial services")
data$fathers_occupation <- str_replace(data$fathers_occupation, "16", "Other Armed Forces personnel")
data$fathers_occupation <- str_replace(data$fathers_occupation, "15", "Armed Forces Sergeants")
data$fathers_occupation <- str_replace(data$fathers_occupation, "14", "Armed Forces Officers")
data$fathers_occupation <- str_replace(data$fathers_occupation, "13", "")
data$fathers_occupation <- str_replace(data$fathers_occupation, "12", "Other Situation")
data$fathers_occupation <- str_replace(data$fathers_occupation, "11", "Armed Forces Professions")
data$fathers_occupation <- str_replace(data$fathers_occupation, "10", "Unskilled Workers")
data$fathers_occupation <- str_replace(data$fathers_occupation, "9", "Installation and Machine Operators and Assembly Workers")
data$fathers_occupation <- str_replace(data$fathers_occupation, "8", "Skilled Workers in Industry, Construction, and Craftsmen")
data$fathers_occupation <- str_replace(data$fathers_occupation, "7", "Farmers and Skilled Workers in Agriculture, Fisheries, and Forestry")
data$fathers_occupation <- str_replace(data$fathers_occupation, "6", "Personal Services, Security and Safety Workers, and Sellers")
data$fathers_occupation <- str_replace(data$fathers_occupation, "5", "Administrative staff")
data$fathers_occupation <- str_replace(data$fathers_occupation, "4", "Intermediate Level Technicians and Professions")
data$fathers_occupation <- str_replace(data$fathers_occupation, "3", "Specialists in Intellectual and Scientific Activities")
data$fathers_occupation <- str_replace(data$fathers_occupation, "2", "Representatives of the Legislative Power and Executive Bodies, Directors, Directors and Executive Managers")
data$fathers_occupation <- str_replace(data$fathers_occupation, "1", "Student")

data$mothers_occupation <- str_replace(data$mothers_occupation, "46", "Street vendors (except food) and street service providers")
data$mothers_occupation <- str_replace(data$mothers_occupation, "45", "Meal preparation assistants")
data$mothers_occupation <- str_replace(data$mothers_occupation, "44", "Unskilled workers in extractive industry, construction, manufacturing, and transport")
data$mothers_occupation <- str_replace(data$mothers_occupation, "43", "Unskilled workers in agriculture, animal production, and fisheries and forestry")
data$mothers_occupation <- str_replace(data$mothers_occupation, "42", "Vehicle drivers and mobile equipment operators")
data$mothers_occupation <- str_replace(data$mothers_occupation, "41", "Assembly workers")
data$mothers_occupation <- str_replace(data$mothers_occupation, "40", "Fixed plant and machine operators")
data$mothers_occupation <- str_replace(data$mothers_occupation, "39", "Workers in food processing, woodworking, and clothing and other industries and crafts")
data$mothers_occupation <- str_replace(data$mothers_occupation, "38", "Skilled workers in electricity and electronics")
data$mothers_occupation <- str_replace(data$mothers_occupation, "37", "Skilled workers in metallurgy, metalworking, and similar")
data$mothers_occupation <- str_replace(data$mothers_occupation, "36", "Skilled construction workers and the like, except electricians")
data$mothers_occupation <- str_replace(data$mothers_occupation, "35", "Farmers, livestock keepers, fishermen, hunters and gatherers, and subsistence")
data$mothers_occupation <- str_replace(data$mothers_occupation, "34", "Market-oriented farmers and skilled agricultural and animal production workers")
data$mothers_occupation <- str_replace(data$mothers_occupation, "33", "Protection and security services personnel")
data$mothers_occupation <- str_replace(data$mothers_occupation, "32", "Personal care workers and the like")
data$mothers_occupation <- str_replace(data$mothers_occupation, "31", "Sellers")
data$mothers_occupation <- str_replace(data$mothers_occupation, "30", "Personal service workers")
data$mothers_occupation <- str_replace(data$mothers_occupation, "29", "Other administrative support staff")
data$mothers_occupation <- str_replace(data$mothers_occupation, "28", "Data, accounting, statistical, financial services, and registry-related operators")
data$mothers_occupation <- str_replace(data$mothers_occupation, "27", "Office workers, secretaries in general, and data processing operators")
data$mothers_occupation <- str_replace(data$mothers_occupation, "26", "Information and communication technology technicians")
data$mothers_occupation <- str_replace(data$mothers_occupation, "25", "Intermediate level technicians from legal, social, sports, cultural, and similar services")
data$mothers_occupation <- str_replace(data$mothers_occupation, "24", "Technicians and professionals of intermediate level of health")
data$mothers_occupation <- str_replace(data$mothers_occupation, "23", "Intermediate level science and engineering technicians and professions")
data$mothers_occupation <- str_replace(data$mothers_occupation, "22", "Specialists in finance, accounting, administrative organization, and public and commercial relations")
data$mothers_occupation <- str_replace(data$mothers_occupation, "21", "Teachers")
data$mothers_occupation <- str_replace(data$mothers_occupation, "20", "Health professionals")
data$mothers_occupation <- str_replace(data$mothers_occupation, "19", "Specialists in the physical sciences, mathematics, engineering, and related techniques")
data$mothers_occupation <- str_replace(data$mothers_occupation, "18", "Hotel, catering, trade, and other services directors")
data$mothers_occupation <- str_replace(data$mothers_occupation, "17", "Directors of administrative and commercial services")
data$mothers_occupation <- str_replace(data$mothers_occupation, "16", "Other Armed Forces personnel")
data$mothers_occupation <- str_replace(data$mothers_occupation, "15", "Armed Forces Sergeants")
data$mothers_occupation <- str_replace(data$mothers_occupation, "14", "Armed Forces Officers")
data$mothers_occupation <- str_replace(data$mothers_occupation, "13", "")
data$mothers_occupation <- str_replace(data$mothers_occupation, "12", "Other Situation")
data$mothers_occupation <- str_replace(data$mothers_occupation, "11", "Armed Forces Professions")
data$mothers_occupation <- str_replace(data$mothers_occupation, "10", "Unskilled Workers")
data$mothers_occupation <- str_replace(data$mothers_occupation, "9", "Installation and Machine Operators and Assembly Workers")
data$mothers_occupation <- str_replace(data$mothers_occupation, "8", "Skilled Workers in Industry, Construction, and Craftsmen")
data$mothers_occupation <- str_replace(data$mothers_occupation, "7", "Farmers and Skilled Workers in Agriculture, Fisheries, and Forestry")
data$mothers_occupation <- str_replace(data$mothers_occupation, "6", "Personal Services, Security and Safety Workers, and Sellers")
data$mothers_occupation <- str_replace(data$mothers_occupation, "5", "Administrative staff")
data$mothers_occupation <- str_replace(data$mothers_occupation, "4", "Intermediate Level Technicians and Professions")
data$mothers_occupation <- str_replace(data$mothers_occupation, "3", "Specialists in Intellectual and Scientific Activities")
data$mothers_occupation <- str_replace(data$mothers_occupation, "2", "Representatives of the Legislative Power and Executive Bodies, Directors, Directors and Executive Managers")
data$mothers_occupation <- str_replace(data$mothers_occupation, "1", "Student")

data$fathers_qualification <- str_replace(data$fathers_qualification, "34", "Higher Education—doctorate (3rd cycle)")
data$fathers_qualification <- str_replace(data$fathers_qualification, "33", "Higher Education—master’s degree (2nd cycle)")
data$fathers_qualification <- str_replace(data$fathers_qualification, "32", "Professional higher technical course")
data$fathers_qualification <- str_replace(data$fathers_qualification, "31", "Specialized higher studies course")
data$fathers_qualification <- str_replace(data$fathers_qualification, "30", "Higher education—degree (1st cycle)")
data$fathers_qualification <- str_replace(data$fathers_qualification, "29", "Technological specialization course")
data$fathers_qualification <- str_replace(data$fathers_qualification, "28", "Basic Education 2nd Cycle (6th/7th/8th Year) or equivalent")
data$fathers_qualification <- str_replace(data$fathers_qualification, "27", "Basic education 1st cycle (4th/5th year) or equivalent")
data$fathers_qualification <- str_replace(data$fathers_qualification, "26", "Can read without having a 4th year of schooling")
data$fathers_qualification <- str_replace(data$fathers_qualification, "25", "Cannot read or write")
data$fathers_qualification <- str_replace(data$fathers_qualification, "24", "Unknown")
data$fathers_qualification <- str_replace(data$fathers_qualification, "23", "Supplementary Accounting and Administration")
data$fathers_qualification <- str_replace(data$fathers_qualification, "22", "General Course of Administration and Commerce")
data$fathers_qualification <- str_replace(data$fathers_qualification, "21", "8th year of schooling")
data$fathers_qualification <- str_replace(data$fathers_qualification, "20", "9th Year of Schooling—not completed")
data$fathers_qualification <- str_replace(data$fathers_qualification, "19", "2nd cycle of the general high school course")
data$fathers_qualification <- str_replace(data$fathers_qualification, "18", "7th year of schooling")
data$fathers_qualification <- str_replace(data$fathers_qualification, "17", "Complementary High School Course—not concluded")
data$fathers_qualification <- str_replace(data$fathers_qualification, "16", "Technical-professional course")
data$fathers_qualification <- str_replace(data$fathers_qualification, "15", "Complementary High School Course")
data$fathers_qualification <- str_replace(data$fathers_qualification, "14", "Basic Education 3rd Cycle (9th/10th/11th Year) or Equivalent")
data$fathers_qualification <- str_replace(data$fathers_qualification, "13", "General commerce course")
data$fathers_qualification <- str_replace(data$fathers_qualification, "12", "10th Year of Schooling")
data$fathers_qualification <- str_replace(data$fathers_qualification, "11", "2nd year complementary high school course")
data$fathers_qualification <- str_replace(data$fathers_qualification, "10", "Other—11th Year of Schooling")
data$fathers_qualification <- str_replace(data$fathers_qualification, "9", "7th Year (Old)")
data$fathers_qualification <- str_replace(data$fathers_qualification, "8", "11th Year of Schooling—not completed")
data$fathers_qualification <- str_replace(data$fathers_qualification, "7", "12th Year of Schooling—not completed")
data$fathers_qualification <- str_replace(data$fathers_qualification, "6", "Frequency of Higher Education")
data$fathers_qualification <- str_replace(data$fathers_qualification, "5", "Higher Education—doctorate")
data$fathers_qualification <- str_replace(data$fathers_qualification, "4", "Higher Education—master’s degree")
data$fathers_qualification <- str_replace(data$fathers_qualification, "3", "Higher Education—degree")
data$fathers_qualification <- str_replace(data$fathers_qualification, "2", "Higher Education—bachelor’s degree")
data$fathers_qualification <- str_replace(data$fathers_qualification, "1", "Secondary Education—12th Year of Schooling or Equivalent")

data$mothers_qualification <- str_replace(data$mothers_qualification, "34", "Higher Education—doctorate (3rd cycle)")
data$mothers_qualification <- str_replace(data$mothers_qualification, "33", "Higher Education—master’s degree (2nd cycle)")
data$mothers_qualification <- str_replace(data$mothers_qualification, "32", "Professional higher technical course")
data$mothers_qualification <- str_replace(data$mothers_qualification, "31", "Specialized higher studies course")
data$mothers_qualification <- str_replace(data$mothers_qualification, "30", "Higher education—degree (1st cycle)")
data$mothers_qualification <- str_replace(data$mothers_qualification, "29", "Technological specialization course")
data$mothers_qualification <- str_replace(data$mothers_qualification, "28", "Basic Education 2nd Cycle (6th/7th/8th Year) or equivalent")
data$mothers_qualification <- str_replace(data$mothers_qualification, "27", "Basic education 1st cycle (4th/5th year) or equivalent")
data$mothers_qualification <- str_replace(data$mothers_qualification, "26", "Can read without having a 4th year of schooling")
data$mothers_qualification <- str_replace(data$mothers_qualification, "25", "Cannot read or write")
data$mothers_qualification <- str_replace(data$mothers_qualification, "24", "Unknown")
data$mothers_qualification <- str_replace(data$mothers_qualification, "23", "Supplementary Accounting and Administration")
data$mothers_qualification <- str_replace(data$mothers_qualification, "22", "General Course of Administration and Commerce")
data$mothers_qualification <- str_replace(data$mothers_qualification, "21", "8th year of schooling")
data$mothers_qualification <- str_replace(data$mothers_qualification, "20", "9th Year of Schooling—not completed")
data$mothers_qualification <- str_replace(data$mothers_qualification, "19", "2nd cycle of the general high school course")
data$mothers_qualification <- str_replace(data$mothers_qualification, "18", "7th year of schooling")
data$mothers_qualification <- str_replace(data$mothers_qualification, "17", "Complementary High School Course—not concluded")
data$mothers_qualification <- str_replace(data$mothers_qualification, "16", "Technical-professional course")
data$mothers_qualification <- str_replace(data$mothers_qualification, "15", "Complementary High School Course")
data$mothers_qualification <- str_replace(data$mothers_qualification, "14", "Basic Education 3rd Cycle (9th/10th/11th Year) or Equivalent")
data$mothers_qualification <- str_replace(data$mothers_qualification, "13", "General commerce course")
data$mothers_qualification <- str_replace(data$mothers_qualification, "12", "10th Year of Schooling")
data$mothers_qualification <- str_replace(data$mothers_qualification, "11", "2nd year complementary high school course")
data$mothers_qualification <- str_replace(data$mothers_qualification, "10", "Other—11th Year of Schooling")
data$mothers_qualification <- str_replace(data$mothers_qualification, "9", "7th Year (Old)")
data$mothers_qualification <- str_replace(data$mothers_qualification, "8", "11th Year of Schooling—not completed")
data$mothers_qualification <- str_replace(data$mothers_qualification, "7", "12th Year of Schooling—not completed")
data$mothers_qualification <- str_replace(data$mothers_qualification, "6", "Frequency of Higher Education")
data$mothers_qualification <- str_replace(data$mothers_qualification, "5", "Higher Education—doctorate")
data$mothers_qualification <- str_replace(data$mothers_qualification, "4", "Higher Education—master’s degree")
data$mothers_qualification <- str_replace(data$mothers_qualification, "3", "Higher Education—degree")
data$mothers_qualification <- str_replace(data$mothers_qualification, "2", "Higher Education—bachelor’s degree")
data$mothers_qualification <- str_replace(data$mothers_qualification, "1", "Secondary Education—12th Year of Schooling or Equivalent")

data$previous_qualification <- str_replace(data$previous_qualification, "17", "Higher education—master’s degree (2nd cycle)")
data$previous_qualification <- str_replace(data$previous_qualification, "16", "Professional higher technical course")
data$previous_qualification <- str_replace(data$previous_qualification, "15", "Higher education—degree (1st cycle)")
data$previous_qualification <- str_replace(data$previous_qualification, "14", "Technological specialization course")
data$previous_qualification <- str_replace(data$previous_qualification, "13", "Basic education 2nd cycle (6th/7th/8th year) or equivalent")
data$previous_qualification <- str_replace(data$previous_qualification, "12", "Basic education 3rd cycle (9th/10th/11th year) or equivalent")
data$previous_qualification <- str_replace(data$previous_qualification, "11", "10th year of schooling—not completed")
data$previous_qualification <- str_replace(data$previous_qualification, "10", "10th year of schooling")
data$previous_qualification <- str_replace(data$previous_qualification, "9", "Other—11th year of schooling")
data$previous_qualification <- str_replace(data$previous_qualification, "8", "11th year of schooling—not completed")
data$previous_qualification <- str_replace(data$previous_qualification, "7", "12th year of schooling—not completed")
data$previous_qualification <- str_replace(data$previous_qualification, "6", "Frequency of higher education")
data$previous_qualification <- str_replace(data$previous_qualification, "5", "Higher education—doctorate")
data$previous_qualification <- str_replace(data$previous_qualification, "4", "Higher education—master’s degree")
data$previous_qualification <- str_replace(data$previous_qualification, "3", "Higher education—degree")
data$previous_qualification <- str_replace(data$previous_qualification, "2", "Higher education—bachelor’s degree")
data$previous_qualification <- str_replace(data$previous_qualification, "1", "Secondary education")

data$course <- str_replace(data$course, "17", "Management (evening attendance)")
data$course <- str_replace(data$course, "16", "Basic Education")
data$course <- str_replace(data$course, "15", "Journalism and Communication")
data$course <- str_replace(data$course, "14", "Advertising and Marketing Management")
data$course <- str_replace(data$course, "13", "Oral Hygiene")
data$course <- str_replace(data$course, "12", "Nursing")
data$course <- str_replace(data$course, "11", "Tourism")
data$course <- str_replace(data$course, "10", "Social Service")
data$course <- str_replace(data$course, "9", "Management")
data$course <- str_replace(data$course, "8", "Equiniculture")
data$course <- str_replace(data$course, "7", "Informatics Engineering")
data$course <- str_replace(data$course, "6", "Veterinary Nursing")
data$course <- str_replace(data$course, "5", "Communication Design")
data$course <- str_replace(data$course, "4", "Agronomy")
data$course <- str_replace(data$course, "3", "Social Service (evening attendance)")
data$course <- str_replace(data$course, "2", "Animation and Multimedia Design")
data$course <- str_replace(data$course, "1", "Biofuel Production Technologies")

data$application_mode <- str_replace(data$application_mode, "18", "Change in institution/course (International)")
data$application_mode <- str_replace(data$application_mode, "17", "Short cycle diploma holders")
data$application_mode <- str_replace(data$application_mode, "16", "Change in institution/course")
data$application_mode <- str_replace(data$application_mode, "15", "Technological specialization diploma holders")
data$application_mode <- str_replace(data$application_mode, "14", "Change in course")
data$application_mode <- str_replace(data$application_mode, "13", "Transfer")
data$application_mode <- str_replace(data$application_mode, "12", "Over 23 years old")
data$application_mode <- str_replace(data$application_mode, "11", "Ordinance No. 533-A/99, item b3 (Other Institution)")
data$application_mode <- str_replace(data$application_mode, "10", "Ordinance No. 533-A/99, item b2) (Different Plan)")
data$application_mode <- str_replace(data$application_mode, "9", "3rd phase—general contingent")
data$application_mode <- str_replace(data$application_mode, "8", "2nd phase—general contingent")
data$application_mode <- str_replace(data$application_mode, "7", "1st phase—special contingent (Madeira Island)")
data$application_mode <- str_replace(data$application_mode, "6", "International student (bachelor)")
data$application_mode <- str_replace(data$application_mode, "5", "Ordinance No. 854-B/99")
data$application_mode <- str_replace(data$application_mode, "4", "Holders of other higher courses")
data$application_mode <- str_replace(data$application_mode, "3", "1st phase—special contingent (Azores Island)")
data$application_mode <- str_replace(data$application_mode, "2", "Ordinance No. 612/93")
data$application_mode <- str_replace(data$application_mode, "1", "1st phase—general contingent")

data$nationality <- str_replace(data$nationality, "21", "Colombian")
data$nationality <- str_replace(data$nationality, "20", "Cuban")
data$nationality <- str_replace(data$nationality, "19", "Russian")
data$nationality <- str_replace(data$nationality, "18", "Ukrainian")
data$nationality <- str_replace(data$nationality, "17", "Mexican")
data$nationality <- str_replace(data$nationality, "16", "Moldova (Republic of)")
data$nationality <- str_replace(data$nationality, "15", "Romanian")
data$nationality <- str_replace(data$nationality, "14", "Brazilian")
data$nationality <- str_replace(data$nationality, "13", "Turkish")
data$nationality <- str_replace(data$nationality, "12", "Santomean")
data$nationality <- str_replace(data$nationality, "11", "Mozambican")
data$nationality <- str_replace(data$nationality, "10", "Guinean")
data$nationality <- str_replace(data$nationality, "9", "Cape Verdean")
data$nationality <- str_replace(data$nationality, "8", "Angolan")
data$nationality <- str_replace(data$nationality, "7", "Lithuanian")
data$nationality <- str_replace(data$nationality, "6", "English")
data$nationality <- str_replace(data$nationality, "5", "Dutch")
data$nationality <- str_replace(data$nationality, "4", "Italian")
data$nationality <- str_replace(data$nationality, "3", "Spanish")
data$nationality <- str_replace(data$nationality, "2", "German")
data$nationality <- str_replace(data$nationality, "1", "Portuguese")

data$marital_status <- str_replace(data$marital_status, "6", "Legally Seperated")
data$marital_status <- str_replace(data$marital_status, "5", "Facto Union")
data$marital_status <- str_replace(data$marital_status, "4", "Divorced")
data$marital_status <- str_replace(data$marital_status, "3", "Widower")
data$marital_status <- str_replace(data$marital_status, "2", "Married")
data$marital_status <- str_replace(data$marital_status, "1", "Single")

view(data)

#graphs!!!

ggplot(data, aes(x = nationality)) +
  geom_bar()



data_by_course_failed <- data |>
  filter(target == "Dropout") |>
  group_by(course) |>
  summarize(avg_age = mean(age_at_enrollment)) |>
  arrange(avg_age)
  
data_by_course_graduated <- data |>
  filter(target == "Graduate") |>
  group_by(course) |>
  summarize(avg_age = mean(age_at_enrollment)) |>
  arrange(avg_age)

data_by_course_enrolled <- data |>
  filter(target == "Enrolled") |>
  group_by(course) |>
  summarize(avg_age = mean(age_at_enrollment)) |>
  arrange(avg_age)

a <- ggplot(data_by_course_failed, aes(x = fct_inorder(course), y = avg_age)) +
  geom_point(aes(color = "Dropout", stroke = 2)) +
  geom_point(data = data_by_course_graduated, aes(color = "Graduate", stroke = 2)) +
  geom_point(data = data_by_course_enrolled, aes(color = "Enrolled", stroke = 2)) +
  scale_color_manual(values=c('red','orange', 'green')) +
  theme(
    text = element_text(family = "serif"),
    axis.text.x = element_text(angle = 45, hjust = 1, vjust = 1),
    plot.margin = margin(t = 20,l = 55), 
    plot.title = element_text(size=34),
    axis.title = element_text(size=26)
    ) +
  labs(
    title = "Average Age of Target Based on Major",
    colour = "Enrollment Status",
    y = "Age",
    x = "Course"
  )

a

b <- ggplot(data, aes(x = curricular_units_1st_sem_grade, y = curricular_units_2nd_sem_grade)) +
  geom_jitter(width = .2, height = .2, aes(color = target, alpha = .8)) +
  scale_alpha(guide = 'none') +
  xlim(10, 20) +
  ylim(10, 20) +
  theme(
    text = element_text(family = "serif"),
    plot.title = element_text(size=34),
    axis.title = element_text(size=26),
    legend.position='bottom'
  ) +
  labs(
    title = "First and Second Semester Curricular Units",
    colour = "Enrollment Status",
    y = "Second Semester Curricular Units",
    x = "First Semester Curricular Units"
  )

b <- ggMarginal(b, groupColour = TRUE, groupFill = TRUE)

b

c <-ggplot(data, aes(x = age_at_enrollment)) +
  geom_bar(aes(fill = target)) +
  theme(
    text = element_text(family = "serif"),
    plot.title = element_text(size=34),
    axis.title = element_text(size=26)
  ) +
  labs(
    title = "Enrollment Status by Age",
    colour = "Enrollment Status",
    y = "Total Students",
    x = "Age",
    fill = "Enrollment Status"
  )

c

data_by_major_status <- data |>
  group_by(course, target) |>
  tally()
  
data_by_major_status <- data_by_major_status |>
  group_by(course) |>
  summarize(target, graduate_ratio = n / sum(n))

data_by_major_status <- data_by_major_status |>
  filter(target == "Dropout")

data_by_major_status$course <- factor(data_by_major_status$course, levels = data_by_major_status$course[order(data_by_major_status$graduate_ratio)])

data_by_major_status$graduate_ratio <- round(data_by_major_status$graduate_ratio, digits = 3)

d <- ggplot(data_by_major_status, aes(x=course, y=graduate_ratio, label=graduate_ratio)) + 
  geom_point(stat='identity', size=12)  +
  geom_text(color="white", size=3) +
  labs(title="Dropout Ratio by Major", 
       subtitle="Dropout Ratio = Total Dropouts / Total Students",
       y = "Course",
       x = "Dropout Ratio") +
  theme(
    text = element_text(family = "serif"),
    plot.title = element_text(size=34),
    axis.title = element_text(size=26),
    plot.margin = margin(l=20, t = 10, b = 10),
    axis.title.y = element_text(vjust=3)) +
  ylim(0, 1) +
  coord_flip()

d
