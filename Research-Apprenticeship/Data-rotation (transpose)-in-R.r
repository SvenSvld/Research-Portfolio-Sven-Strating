##=======================##LOAD DATA##========================================##
library(readxl)
raw_responses_complete_long <- read_excel("~/2_Master_Sociology and Social Research/LiU/Forskningspraktik (771A41)/data/raw_responses_complete_long.xlsx")
View(raw_responses_complete_long)
##============================================================================##

#transform long dataset to wide dataset
library(reshape2)

#question_number
wide_null <- subset(raw_responses_complete_long, select = -c(done,
                                                             sign))
wide1 <- dcast(wide_null, id~question_number)
##add prefix before collumn
library(dplyr)
library(tidyselect)
wide1 <- wide1 %>%
  rename_with( ~ paste("", .x, sep = "Question_"))
names(wide1)[names(wide1) == "Question_id"] <- "id"

#done
wide2 <- dcast(raw_responses_complete_long, id~question_number, 
               value.var = "done")
wide2 <- wide2 %>%
  rename_with( ~ paste("", .x, sep = "Done_"))
names(wide2)[names(wide2) == "Done_id"] <- "id"

#sign
wide3 <- dcast(raw_responses_complete_long, id~question_number, 
               value.var = "sign")
wide3 <- wide3 %>%
  rename_with( ~ paste("", .x, sep = "Sign_"))
names(wide3)[names(wide3) == "Sign_id"] <- "id"

#merge dataset on ID variable
raw_responses_complete_wide1 <- full_join(wide1, wide2, by="id")
raw_responses_complete_wide <- full_join(raw_responses_complete_wide1,
                                         wide3, by="id")

##=========================SAVE WIDE DATA=====================================##
require(writexl)
write_xlsx(raw_responses_complete_wide, 
           "C:\\Users\\svens\\OneDrive\\Documenten\\2_Master_Sociology and Social Research\\LiU\\Forskningspraktik (771A41)\\data\\raw_responses_complete_wide.xlsx")
##============================================================================##
