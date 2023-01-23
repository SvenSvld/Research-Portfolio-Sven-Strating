#===============================================================================
#setup syntaxis VERSION 1.0
#===============================================================================

#----------------------------------{age}----------------------------------------

library(readxl)
data <- read_excel("2_Master_Sociology and Social Research/LiU/Forskningspraktik (771A41)/final data/complete_dataset_version2 - RESCALE (1).xlsx")
View(data)

#change character into numerical values
typeof(data$age)
x_lt18  <- sub("lt18",  1, data$age)
x_18_24 <- sub("18-24", 2, data$age)
x_25_34 <- sub("25-34", 3, data$age)
x_35_44 <- sub("35-44", 4, data$age)
x_45_54 <- sub("45-54", 5, data$age)
x_55_64 <- sub("55-64", 6, data$age)
x_gt64  <- sub("gt64",  7, data$age)

age2 <- data.frame(data$age, data$id,
                   x_lt18, x_18_24,
                   x_25_34, x_35_44,
                   x_45_54, x_55_64,
                   x_gt64)
View(age2)

library(dplyr)

#x_lt18
age2 <- age2 %>% 
  mutate(x_lt18 = na_if(x_lt18, "18-24"))
age2 <- age2 %>% 
  mutate(x_lt18 = na_if(x_lt18, "25-34"))
age2 <- age2 %>% 
  mutate(x_lt18 = na_if(x_lt18, "35-44"))
age2 <- age2 %>% 
  mutate(x_lt18 = na_if(x_lt18, "45-54"))
age2 <- age2 %>% 
  mutate(x_lt18 = na_if(x_lt18, "55-64"))
age2 <- age2 %>% 
  mutate(x_lt18 = na_if(x_lt18, "gt64"))

#18-24
age2 <- age2 %>% 
  mutate(x_18_24 = na_if(x_18_24, "lt18"))
age2 <- age2 %>% 
  mutate(x_18_24 = na_if(x_18_24, "25-34"))
age2 <- age2 %>% 
  mutate(x_18_24 = na_if(x_18_24, "35-44"))
age2 <- age2 %>% 
  mutate(x_18_24 = na_if(x_18_24, "45-54"))
age2 <- age2 %>% 
  mutate(x_18_24 = na_if(x_18_24, "55-64"))
age2 <- age2 %>% 
  mutate(x_18_24 = na_if(x_18_24, "gt64"))

#25-34
age2 <- age2 %>% 
  mutate(x_25_34 = na_if(x_25_34, "lt18"))
age2 <- age2 %>% 
  mutate(x_25_34 = na_if(x_25_34, "18-24"))
age2 <- age2 %>% 
  mutate(x_25_34 = na_if(x_25_34, "35-44"))
age2 <- age2 %>% 
  mutate(x_25_34 = na_if(x_25_34, "45-54"))
age2 <- age2 %>% 
  mutate(x_25_34 = na_if(x_25_34, "55-64"))
age2 <- age2 %>% 
  mutate(x_25_34 = na_if(x_25_34, "gt64"))

#35-44
age2 <- age2 %>% 
  mutate(x_35_44 = na_if(x_35_44, "lt18"))
age2 <- age2 %>% 
  mutate(x_35_44 = na_if(x_35_44, "18-24"))
age2 <- age2 %>% 
  mutate(x_35_44 = na_if(x_35_44, "25-34"))
age2 <- age2 %>% 
  mutate(x_35_44 = na_if(x_35_44, "45-54"))
age2 <- age2 %>% 
  mutate(x_35_44 = na_if(x_35_44, "55-64"))
age2 <- age2 %>% 
  mutate(x_35_44 = na_if(x_35_44, "gt64"))

#45-54
age2 <- age2 %>% 
  mutate(x_45_54 = na_if(x_45_54, "lt18"))
age2 <- age2 %>% 
  mutate(x_45_54 = na_if(x_45_54, "18-24"))
age2 <- age2 %>% 
  mutate(x_45_54 = na_if(x_45_54, "25-34"))
age2 <- age2 %>% 
  mutate(x_45_54 = na_if(x_45_54, "35-44"))
age2 <- age2 %>% 
  mutate(x_45_54 = na_if(x_45_54, "55-64"))
age2 <- age2 %>% 
  mutate(x_45_54 = na_if(x_45_54, "gt64"))

#55-64
age2 <- age2 %>% 
  mutate(x_55_64 = na_if(x_55_64, "lt18"))
age2 <- age2 %>% 
  mutate(x_55_64 = na_if(x_55_64, "18-24"))
age2 <- age2 %>% 
  mutate(x_55_64 = na_if(x_55_64, "25-34"))
age2 <- age2 %>% 
  mutate(x_55_64 = na_if(x_55_64, "35-44"))
age2 <- age2 %>% 
  mutate(x_55_64 = na_if(x_55_64, "45-54"))
age2 <- age2 %>% 
  mutate(x_55_64 = na_if(x_55_64, "gt64"))

#gt64
age2 <- age2 %>% 
  mutate(x_gt64 = na_if(x_gt64, "lt18"))
age2 <- age2 %>% 
  mutate(x_gt64 = na_if(x_gt64, "18-24"))
age2 <- age2 %>% 
  mutate(x_gt64 = na_if(x_gt64, "25-34"))
age2 <- age2 %>% 
  mutate(x_gt64 = na_if(x_gt64, "35-44"))
age2 <- age2 %>% 
  mutate(x_gt64 = na_if(x_gt64, "45-54"))
age2 <- age2 %>% 
  mutate(x_gt64 = na_if(x_gt64, "55-64"))

age2$x_lt18  <- as.numeric(age2$x_lt18)
age2$x_18_24 <- as.numeric(age2$x_18_24)
age2$x_25_34 <- as.numeric(age2$x_25_34)
age2$x_35_44 <- as.numeric(age2$x_35_44)
age2$x_45_54 <- as.numeric(age2$x_45_54)
age2$x_55_64 <- as.numeric(age2$x_55_64)
age2$x_gt64  <- as.numeric(age2$x_gt64)

age2$x_lt18[is.na(age2$x_lt18)]   <- 0
age2$x_18_24[is.na(age2$x_18_24)] <- 0
age2$x_25_34[is.na(age2$x_25_34)] <- 0
age2$x_35_44[is.na(age2$x_35_44)] <- 0
age2$x_45_54[is.na(age2$x_45_54)] <- 0
age2$x_55_64[is.na(age2$x_55_64)] <- 0
age2$x_gt64[is.na(age2$x_gt64)]   <- 0

##==============================================================================
require(writexl)
write_xlsx(age2, 
           "C:\\Users\\svens\\OneDrive\\Documenten\\2_Master_Sociology and Social Research\\LiU\\Forskningspraktik (771A41)\\data\\age2.xlsx")
##==============================================================================
library(readxl)
age2 <- read_excel("2_Master_Sociology and Social Research/LiU/Forskningspraktik (771A41)/data/age2.xlsx")
View(age2)
##==============================================================================

library(dplyr)
age2 <- select(age2, -data.age)

require(reshape)
colnames(age2)[colnames(age2) == "data.id"] = "id"

age2 <- select(age2, -x_lt18)
age2 <- select(age2, -x_18_24)
age2 <- select(age2, -x_25_34)
age2 <- select(age2, -x_35_44)
age2 <- select(age2, -x_45_54)
age2 <- select(age2, -x_55_64)
age2 <- select(age2, -x_gt64)

age2[age2 == 0] <- NA

##==============================================================================
require(writexl)
write_xlsx(age2, 
           "C:\\Users\\svens\\OneDrive\\Documenten\\2_Master_Sociology and Social Research\\LiU\\Forskningspraktik (771A41)\\data\\age_setup.xlsx")
##==============================================================================


#--------------------------------{gender}---------------------------------------
library(readxl)
data <- read_excel("2_Master_Sociology and Social Research/LiU/Forskningspraktik (771A41)/final data/complete_dataset_version2 - RESCALE (1).xlsx")
View(data)

class(data$gender)


female <- sub("female",  1, data$gender)
male   <- sub("male",    0, data$gender)

gender2 <- data.frame(data$id, data$gender,
                      female, male)
class(gender2$female)
#female
gender2$female[gender2$female == "male"] <- 0
#male
gender2$male[gender2$male == 0]     <- 1
gender2$male[gender2$male == "fe0"] <- 0

#0=male, 1=female
table(gender2$female, gender2$data.gender)

require(reshape)
colnames(gender2)[colnames(gender2) == "data.id"] = "id"

##==============================================================================
require(writexl)
write_xlsx(gender2, 
           "C:\\Users\\svens\\OneDrive\\Documenten\\2_Master_Sociology and Social Research\\LiU\\Forskningspraktik (771A41)\\data\\gender2.xlsx")
##==============================================================================

library(readxl)
gender2 <- read_excel("2_Master_Sociology and Social Research/LiU/Forskningspraktik (771A41)/data/gender2.xlsx")
View(gender2)

#0=male, 1=female
table(gender2$data.gender, gender2$gender1)

gender2$male[gender2$male == "fe0"] <- 0

library(dplyr)
gender2 <- select(gender2, -data.gender)
gender2 <- select(gender2, -female)
gender2 <- select(gender2, -male)

##==============================================================================
require(writexl)
write_xlsx(gender2, 
           "C:\\Users\\svens\\OneDrive\\Documenten\\2_Master_Sociology and Social Research\\LiU\\Forskningspraktik (771A41)\\data\\gender3.xlsx")
##==============================================================================


#-----------------------------{partydecided}------------------------------------

library(readxl)
data <- read_excel("2_Master_Sociology and Social Research/LiU/Forskningspraktik (771A41)/final data/complete_dataset_version2 - RESCALE (1).xlsx")
View(data)

#change character into numerical values
typeof(data$partydecided)
partydecided_1  <- sub("veryunsure",  1, data$partydecided)
partydecided_2  <- sub("somewhatunsure", 2, data$partydecided)
partydecided_3  <- sub("somewhatsure", 3, data$partydecided)
partydecided_4  <- sub("verysure", 4, data$partydecided)

partydecided2 <- data.frame(data$id, data$partydecided,
                           partydecided_1, partydecided_2,
                           partydecided_3, partydecided_4)

#veryunsure
partydecided2 <- partydecided2 %>% 
  mutate(partydecided_1 = na_if(partydecided_1, "somewhatunsure"))
partydecided2 <- partydecided2 %>% 
  mutate(partydecided_1 = na_if(partydecided_1, "somewhatsure"))
partydecided2 <- partydecided2 %>% 
  mutate(partydecided_1 = na_if(partydecided_1, "verysure"))

#somewhatunsure
partydecided2 <- partydecided2 %>% 
  mutate(partydecided_2 = na_if(partydecided_2, "veryunsure"))
partydecided2 <- partydecided2 %>% 
  mutate(partydecided_2 = na_if(partydecided_2, "somewhatsure"))
partydecided2 <- partydecided2 %>% 
  mutate(partydecided_2 = na_if(partydecided_2, "verysure"))

#somewhatsure
partydecided2 <- partydecided2 %>% 
  mutate(partydecided_3 = na_if(partydecided_3, "veryunsure"))
partydecided2 <- partydecided2 %>% 
  mutate(partydecided_3 = na_if(partydecided_3, "somewhatunsure"))
partydecided2 <- partydecided2 %>% 
  mutate(partydecided_3 = na_if(partydecided_3, "verysure"))

#verysure
partydecided2 <- partydecided2 %>% 
  mutate(partydecided_4 = na_if(partydecided_4, "veryunsure"))
partydecided2 <- partydecided2 %>% 
  mutate(partydecided_4 = na_if(partydecided_4, "somewhatunsure"))
partydecided2 <- partydecided2 %>% 
  mutate(partydecided_4 = na_if(partydecided_4, "somewhatsure"))

require(reshape)
colnames(partydecided2)[colnames(partydecided2) == "data.id"] = "id"


##==============================================================================
require(writexl)
write_xlsx(partydecided2, 
           "C:\\Users\\svens\\OneDrive\\Documenten\\2_Master_Sociology and Social Research\\LiU\\Forskningspraktik (771A41)\\data\\partydecided2.xlsx")
##==============================================================================

library(readxl)
partydecided2 <- read_excel("2_Master_Sociology and Social Research/LiU/Forskningspraktik (771A41)/data/partydecided2.xlsx")
View(partydecided2)

library(dplyr)
partydecided2 <- select(partydecided2, -partydecided_1)
partydecided2 <- select(partydecided2, -partydecided_2)
partydecided2 <- select(partydecided2, -partydecided_3)
partydecided2 <- select(partydecided2, -partydecided_4)

#1=veryunsure, 2=somewhatunsure, 3=somewhatsure, 4=verysure
table(partydecided2$data.partydecided, 
      partydecided2$partydecided2)

library(dplyr)
partydecided2 <- select(partydecided2, -data.partydecided)

##==============================================================================
require(writexl)
write_xlsx(partydecided2, 
           "C:\\Users\\svens\\OneDrive\\Documenten\\2_Master_Sociology and Social Research\\LiU\\Forskningspraktik (771A41)\\data\\partydecided3.xlsx")
##==============================================================================

#####--------------------------FINAL_MERGE----------------------------------####

#main dataset
library(readxl)
dataset <- read_excel("2_Master_Sociology and Social Research/LiU/Forskningspraktik (771A41)/final data/complete_dataset_version2 - RESCALE (1).xlsx")
View(dataset)

#age dataset
library(readxl)
age <- read_excel("2_Master_Sociology and Social Research/LiU/Forskningspraktik (771A41)/data/age_setup.xlsx")
View(age)

#gender dataset
library(readxl)
gender <- read_excel("2_Master_Sociology and Social Research/LiU/Forskningspraktik (771A41)/data/gender3.xlsx")
View(gender)

#partydecided dataset
library(readxl)
partydecided <- read_excel("2_Master_Sociology and Social Research/LiU/Forskningspraktik (771A41)/data/partydecided3.xlsx")
View(partydecided)

#------------------------------------------------------------------------------#

library(dplyr)
dataset1 <- full_join(dataset, age, by="id")
dataset2 <- full_join(dataset1, gender, by="id")
dataset3 <- full_join(dataset2, partydecided, by="id")

##============================================================================##
##                            FINAL DATASET                                   ##
##============================================================================##
require(writexl)
write_xlsx(dataset3, 
           "C:\\Users\\svens\\OneDrive\\Documenten\\2_Master_Sociology and Social Research\\LiU\\Forskningspraktik (771A41)\\data\\final_dataset_v3.xlsx")
##============================================================================##

# gender: 0=male, 1=female,

# age:    1="lt18",  2="18-24", 3="25-34", 
#         4="35-44", 5="45-54", 6="55-64", 
#         7="gt64"

# partydecided: 1="veryunsure", 2="somewhatunsure", 3="somewhatsure", 
#               4="verysure"
