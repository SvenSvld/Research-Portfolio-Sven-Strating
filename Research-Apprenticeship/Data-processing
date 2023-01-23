#read data as .xls
library(readxl)
raw_responses_3 <- read_excel("raw_responses_3.xlsx")
View(raw_responses_3)

#check variables
class(raw_responses_3)
ls(raw_responses_3)

#make new data.frame to match answers because people did not fill out all
#the questions
df <- data.frame(rownum = 1:45000)

bloc_len <- 28

df$id <- 
  rep(seq(1, 1 + nrow(df) %/% bloc_len), each = bloc_len, 
      length.out = nrow(df))
View(df)

df2 <- subset(df, select = -c(rownum))
View(df2)

library(dplyr)
df3 <- df2 %>% group_by(id) %>% mutate(question_number = seq_len(n()))
View(df3)

df3 <- df3[-c(44997, 44998, 44999, 45000), ] 
View(df3)

#split dataset in 28 pieces
## for question 1 --> rename "question_1" into "question_number"
dataset_1 <- subset(raw_responses_3, select = c(id,
                                                question_1,
                                                answer_Q1,
                                                sign_Q1,
                                                done_Q1))
names(dataset_1)[names(dataset_1) == "question_1"] <- "question_number"
names(dataset_1)[names(dataset_1) == "answer_Q1"] <- "answer"
names(dataset_1)[names(dataset_1) == "sign_Q1"] <- "sign"
names(dataset_1)[names(dataset_1) == "done_Q1"] <- "done"


dataset_2 <- subset(raw_responses_3, select = c(id,
                                                question_2,
                                                answer_Q2,
                                                sign_Q2,
                                                done_Q2))
names(dataset_2)[names(dataset_2) == "question_2"] <- "question_number"
names(dataset_2)[names(dataset_2) == "answer_Q2"] <- "answer"
names(dataset_2)[names(dataset_2) == "sign_Q2"] <- "sign"
names(dataset_2)[names(dataset_2) == "done_Q2"] <- "done"


dataset_3 <- subset(raw_responses_3, select = c(id,
                                                question_3,
                                                answer_Q3,
                                                sign_Q3,
                                                done_Q3))
names(dataset_3)[names(dataset_3) == "question_3"] <- "question_number"
names(dataset_3)[names(dataset_3) == "answer_Q3"] <- "answer"
names(dataset_3)[names(dataset_3) == "sign_Q3"] <- "sign"
names(dataset_3)[names(dataset_3) == "done_Q3"] <- "done"



dataset_4 <- subset(raw_responses_3, select = c(id,
                                                question_4,
                                                answer_Q4,
                                                sign_Q4,
                                                done_Q4))
names(dataset_4)[names(dataset_4) == "question_4"] <- "question_number"
names(dataset_4)[names(dataset_4) == "question_4"] <- "question_number"
names(dataset_4)[names(dataset_4) == "answer_Q4"] <- "answer"
names(dataset_4)[names(dataset_4) == "sign_Q4"] <- "sign"
names(dataset_4)[names(dataset_4) == "done_Q4"] <- "done"




dataset_5 <- subset(raw_responses_3, select = c(id,
                                                question_5,
                                                answer_Q5,
                                                sign_Q5,
                                                done_Q5))
names(dataset_5)[names(dataset_5) == "question_5"] <- "question_number"
names(dataset_5)[names(dataset_5) == "answer_Q5"] <- "answer"
names(dataset_5)[names(dataset_5) == "sign_Q5"] <- "sign"
names(dataset_5)[names(dataset_5) == "done_Q5"] <- "done"


dataset_6 <- subset(raw_responses_3, select = c(id,
                                                question_6,
                                                answer_Q6,
                                                sign_Q6,
                                                done_Q6))
names(dataset_6)[names(dataset_6) == "question_6"] <- "question_number"
names(dataset_6)[names(dataset_6) == "answer_Q6"] <- "answer"
names(dataset_6)[names(dataset_6) == "sign_Q6"] <- "sign"
names(dataset_6)[names(dataset_6) == "done_Q6"] <- "done"



dataset_7 <- subset(raw_responses_3, select = c(id,
                                                question_7,
                                                answer_Q7,
                                                sign_Q7,
                                                done_Q7))
names(dataset_7)[names(dataset_7) == "question_7"] <- "question_number"
names(dataset_7)[names(dataset_7) == "answer_Q7"] <- "answer"
names(dataset_7)[names(dataset_7) == "sign_Q7"] <- "sign"
names(dataset_7)[names(dataset_7) == "done_Q7"] <- "done"


dataset_8 <- subset(raw_responses_3, select = c(id,
                                                question_8,
                                                answer_Q8,
                                                sign_Q8,
                                                done_Q8))
names(dataset_8)[names(dataset_8) == "question_8"] <- "question_number"
names(dataset_8)[names(dataset_8) == "answer_Q8"] <- "answer"
names(dataset_8)[names(dataset_8) == "sign_Q8"] <- "sign"
names(dataset_8)[names(dataset_8) == "done_Q8"] <- "done"


dataset_9 <- subset(raw_responses_3, select = c(id,
                                                question_9,
                                                answer_Q9,
                                                sign_Q9,
                                                done_Q9))
names(dataset_9)[names(dataset_9) == "question_9"] <- "question_number"
names(dataset_9)[names(dataset_9) == "answer_Q9"] <- "answer"
names(dataset_9)[names(dataset_9) == "sign_Q9"] <- "sign"
names(dataset_9)[names(dataset_9) == "done_Q9"] <- "done"


dataset_10 <- subset(raw_responses_3, select = c(id,
                                                question_10,
                                                answer_Q10,
                                                sign_Q10,
                                                done_Q10))
names(dataset_10)[names(dataset_10) == "question_10"] <- "question_number"
names(dataset_10)[names(dataset_10) == "answer_Q10"] <- "answer"
names(dataset_10)[names(dataset_10) == "sign_Q10"] <- "sign"
names(dataset_10)[names(dataset_10) == "done_Q10"] <- "done"


dataset_11 <- subset(raw_responses_3, select = c(id,
                                                 question_11,
                                                 answer_Q11,
                                                 sign_Q11,
                                                 done_Q11))
names(dataset_11)[names(dataset_11) == "question_11"] <- "question_number"
names(dataset_11)[names(dataset_11) == "answer_Q11"] <- "answer"
names(dataset_11)[names(dataset_11) == "sign_Q11"] <- "sign"
names(dataset_11)[names(dataset_11) == "done_Q11"] <- "done"



dataset_12 <- subset(raw_responses_3, select = c(id,
                                                 question_12,
                                                 answer_Q12,
                                                 sign_Q12,
                                                 done_Q12))
names(dataset_12)[names(dataset_12) == "question_12"] <- "question_number"
names(dataset_12)[names(dataset_12) == "answer_Q12"] <- "answer"
names(dataset_12)[names(dataset_12) == "sign_Q12"] <- "sign"
names(dataset_12)[names(dataset_12) == "done_Q12"] <- "done"



dataset_13 <- subset(raw_responses_3, select = c(id,
                                                 question_13,
                                                 answer_Q13,
                                                 sign_Q13,
                                                 done_Q13))
names(dataset_13)[names(dataset_13) == "question_13"] <- "question_number"
names(dataset_13)[names(dataset_13) == "answer_Q13"] <- "answer"
names(dataset_13)[names(dataset_13) == "sign_Q13"] <- "sign"
names(dataset_13)[names(dataset_13) == "done_Q13"] <- "done"



dataset_14 <- subset(raw_responses_3, select = c(id,
                                                 question_14,
                                                 answer_Q14,
                                                 sign_Q14,
                                                 done_Q14))
names(dataset_14)[names(dataset_14) == "question_14"] <- "question_number"
names(dataset_14)[names(dataset_14) == "answer_Q14"] <- "answer"
names(dataset_14)[names(dataset_14) == "sign_Q14"] <- "sign"
names(dataset_14)[names(dataset_14) == "done_Q14"] <- "done"


dataset_15 <- subset(raw_responses_3, select = c(id,
                                                 question_15,
                                                 answer_Q15,
                                                 sign_Q15,
                                                 done_Q15))
names(dataset_15)[names(dataset_15) == "question_15"] <- "question_number"
names(dataset_15)[names(dataset_15) == "answer_Q15"] <- "answer"
names(dataset_15)[names(dataset_15) == "sign_Q15"] <- "sign"
names(dataset_15)[names(dataset_15) == "done_Q15"] <- "done"


dataset_16 <- subset(raw_responses_3, select = c(id,
                                                 question_16,
                                                 answer_Q16,
                                                 sign_Q16,
                                                 done_Q16))
names(dataset_16)[names(dataset_16) == "question_16"] <- "question_number"
names(dataset_16)[names(dataset_16) == "answer_Q16"] <- "answer"
names(dataset_16)[names(dataset_16) == "sign_Q16"] <- "sign"
names(dataset_16)[names(dataset_16) == "done_Q16"] <- "done"


dataset_17 <- subset(raw_responses_3, select = c(id,
                                                 question_17,
                                                 answer_Q17,
                                                 sign_Q17,
                                                 done_Q17))
names(dataset_17)[names(dataset_17) == "question_17"] <- "question_number"
names(dataset_17)[names(dataset_17) == "answer_Q17"] <- "answer"
names(dataset_17)[names(dataset_17) == "sign_Q17"] <- "sign"
names(dataset_17)[names(dataset_17) == "done_Q17"] <- "done"


dataset_18 <- subset(raw_responses_3, select = c(id,
                                                 question_18,
                                                 answer_Q18,
                                                 sign_Q18,
                                                 done_Q18))
names(dataset_18)[names(dataset_18) == "question_18"] <- "question_number"
names(dataset_18)[names(dataset_18) == "answer_Q18"] <- "answer"
names(dataset_18)[names(dataset_18) == "sign_Q18"] <- "sign"
names(dataset_18)[names(dataset_18) == "done_Q18"] <- "done"


dataset_19 <- subset(raw_responses_3, select = c(id,
                                                 question_19,
                                                 answer_Q19,
                                                 sign_Q19,
                                                 done_Q19))
names(dataset_19)[names(dataset_19) == "question_19"] <- "question_number"
names(dataset_19)[names(dataset_19) == "answer_Q19"] <- "answer"
names(dataset_19)[names(dataset_19) == "sign_Q19"] <- "sign"
names(dataset_19)[names(dataset_19) == "done_Q19"] <- "done"


dataset_20 <- subset(raw_responses_3, select = c(id,
                                                 question_20,
                                                 answer_Q20,
                                                 sign_Q20,
                                                 done_Q20))
names(dataset_20)[names(dataset_20) == "question_20"] <- "question_number"
names(dataset_20)[names(dataset_20) == "answer_Q20"] <- "answer"
names(dataset_20)[names(dataset_20) == "sign_Q20"] <- "sign"
names(dataset_20)[names(dataset_20) == "done_Q20"] <- "done"


dataset_21 <- subset(raw_responses_3, select = c(id,
                                                 question_21,
                                                 answer_Q21,
                                                 sign_Q21,
                                                 done_Q21))
names(dataset_21)[names(dataset_21) == "question_21"] <- "question_number"
names(dataset_21)[names(dataset_21) == "answer_Q21"] <- "answer"
names(dataset_21)[names(dataset_21) == "sign_Q21"] <- "sign"
names(dataset_21)[names(dataset_21) == "done_Q21"] <- "done"



dataset_22 <- subset(raw_responses_3, select = c(id,
                                                 question_22,
                                                 answer_Q22,
                                                 sign_Q22,
                                                 done_Q22))
names(dataset_22)[names(dataset_22) == "question_22"] <- "question_number"
names(dataset_22)[names(dataset_22) == "answer_Q22"] <- "answer"
names(dataset_22)[names(dataset_22) == "sign_Q22"] <- "sign"
names(dataset_22)[names(dataset_22) == "done_Q22"] <- "done"


dataset_23 <- subset(raw_responses_3, select = c(id,
                                                 question_23,
                                                 answer_Q23,
                                                 sign_Q23,
                                                 done_Q23))
names(dataset_23)[names(dataset_23) == "question_23"] <- "question_number"
names(dataset_23)[names(dataset_23) == "answer_Q23"] <- "answer"
names(dataset_23)[names(dataset_23) == "sign_Q23"] <- "sign"
names(dataset_23)[names(dataset_23) == "done_Q23"] <- "done"


dataset_24 <- subset(raw_responses_3, select = c(id,
                                                 question_24,
                                                 answer_Q24,
                                                 sign_Q24,
                                                 done_Q24))
names(dataset_24)[names(dataset_24) == "question_24"] <- "question_number"
names(dataset_24)[names(dataset_24) == "answer_Q24"] <- "answer"
names(dataset_24)[names(dataset_24) == "sign_Q24"] <- "sign"
names(dataset_24)[names(dataset_24) == "done_Q24"] <- "done"


dataset_25 <- subset(raw_responses_3, select = c(id,
                                                 question_25,
                                                 answer_Q25,
                                                 sign_Q25,
                                                 done_Q25))
names(dataset_25)[names(dataset_25) == "question_25"] <- "question_number"
names(dataset_25)[names(dataset_25) == "answer_Q25"] <- "answer"
names(dataset_25)[names(dataset_25) == "sign_Q25"] <- "sign"
names(dataset_25)[names(dataset_25) == "done_Q25"] <- "done"


dataset_26 <- subset(raw_responses_3, select = c(id,
                                                 question_26,
                                                 answer_Q26,
                                                 sign_Q26,
                                                 done_Q26))
names(dataset_26)[names(dataset_26) == "question_26"] <- "question_number"
names(dataset_26)[names(dataset_26) == "answer_Q26"] <- "answer"
names(dataset_26)[names(dataset_26) == "sign_Q26"] <- "sign"
names(dataset_26)[names(dataset_26) == "done_Q26"] <- "done"


dataset_27 <- subset(raw_responses_3, select = c(id,
                                                 question_27,
                                                 answer_Q27,
                                                 sign_Q27,
                                                 done_Q27))
names(dataset_27)[names(dataset_27) == "question_27"] <- "question_number"
names(dataset_27)[names(dataset_27) == "answer_Q27"] <- "answer"
names(dataset_27)[names(dataset_27) == "sign_Q27"] <- "sign"
names(dataset_27)[names(dataset_27) == "done_Q27"] <- "done"


dataset_28 <- subset(raw_responses_3, select = c(id,
                                                 question_28,
                                                 answer_Q28,
                                                 sign_Q28,
                                                 done_Q28))
names(dataset_28)[names(dataset_28) == "question_28"] <- "question_number"
names(dataset_28)[names(dataset_28) == "answer_Q28"] <- "answer"
names(dataset_28)[names(dataset_28) == "sign_Q28"] <- "sign"
names(dataset_28)[names(dataset_28) == "done_Q28"] <- "done"


#match answer_Q1 ... answer_Q28 by id and question_number ## sort by id to
                                                          ## see what happend

df4 <- full_join(dataset_1, df3, by = c("id", "question_number"))   #Q1

df5 <- full_join(dataset_2, df3, by = c("id", "question_number"))   #Q2

df6 <- full_join(dataset_3, df3, by = c("id", "question_number"))   #Q3

df7 <- full_join(dataset_4, df3, by = c("id", "question_number"))   #Q4
 
df8 <- full_join(dataset_5, df3, by = c("id", "question_number"))   #Q5
 
df9 <- full_join(dataset_6, df3, by = c("id", "question_number"))   #Q6
 
df10 <- full_join(dataset_7, df3, by = c("id", "question_number"))  #Q7
  
df11 <- full_join(dataset_8, df3, by = c("id", "question_number"))  #Q8
 
df12 <- full_join(dataset_9, df3, by = c("id", "question_number"))  #Q9

df13 <- full_join(dataset_10, df3, by = c("id", "question_number")) #Q10

df14 <- full_join(dataset_11, df3, by = c("id", "question_number")) #Q11

df15 <- full_join(dataset_12, df3, by = c("id", "question_number")) #Q12

df16 <- full_join(dataset_13, df3, by = c("id", "question_number")) #Q13

df17 <- full_join(dataset_14, df3, by = c("id", "question_number")) #Q14

df18 <- full_join(dataset_15, df3, by = c("id", "question_number")) #Q15

df19 <- full_join(dataset_16, df3, by = c("id", "question_number")) #Q16

df20 <- full_join(dataset_17, df3, by = c("id", "question_number")) #Q17

df21 <- full_join(dataset_18, df3, by = c("id", "question_number")) #Q18

df22 <- full_join(dataset_19, df3, by = c("id", "question_number")) #Q19

df23 <- full_join(dataset_20, df3, by = c("id", "question_number")) #Q20

df24 <- full_join(dataset_21, df3, by = c("id", "question_number")) #Q21

df25 <- full_join(dataset_22, df3, by = c("id", "question_number")) #Q22

df26 <- full_join(dataset_23, df3, by = c("id", "question_number")) #Q23

df27 <- full_join(dataset_24, df3, by = c("id", "question_number")) #Q24

df28 <- full_join(dataset_25, df3, by = c("id", "question_number")) #Q25

df29 <- full_join(dataset_26, df3, by = c("id", "question_number")) #Q26

df30 <- full_join(dataset_27, df3, by = c("id", "question_number")) #Q27

df31 <- full_join(dataset_28, df3, by = c("id", "question_number")) #Q28


#question 1 ## check with filter 
a <- df4 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y)

#question 2 ## check with filter
b <- df5 %>% 
  left_join(a, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 3 ## check with filter
c <- df6 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 4 ## check with filter
d <- df7 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 5 ## check with filter
e <- df8 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 6 ## check with filter
f <- df9 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 7 ## check with filter
g <- df10 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 8 ## check with filter
h <- df11 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 9 ## check with filter
i <- df12 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 10 ## check with filter
j <- df13 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 11 ## check with filter
k <- df14 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 12 ## check with filter
l <- df15 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 13 ## check with filter
m <- df16 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 14 ## check with filter
n <- df17 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 15 ## check with filter
o <- df18 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 16 ## check with filter
p <- df19 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 17 ## check with filter
q <- df20 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 18 ## check with filter
r <- df21 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 19 ## check with filter
s <- df22 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 20 ## check with filter
t <- df23 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 21 ## check with filter
u <- df24 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 22 ## check with filter
v <- df25 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 23 ## check with filter
w <- df26 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 24 ## check with filter
x <- df27 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 25 ## check with filter
y <- df28 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 26 ## check with filter
z <- df29 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 27 ## check with filter
z1 <- df30 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#question 28 ## check with filter
z2 <- df31 %>% 
  left_join(df5, by = "id") %>% 
  mutate(answer = coalesce(answer.x, answer.y)) %>% 
  mutate(sign = coalesce(sign.x, sign.y)) %>%
  mutate(done = coalesce(done.x, done.y)) %>%
  select(-answer.x, -answer.y) %>%
  select(-sign.x, -sign.y) %>%
  select(-done.x, -done.y) 

#last step
a <- filter(a, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)


b <- filter(b,question_number==1 & question_number.x==1 & question_number.y==1   |
              question_number==2 & question_number.x==2 & question_number.y==2   |
              question_number==3 & question_number.x==3 & question_number.y==3   |           
              question_number==4 & question_number.x==4 & question_number.y==4   | 
              question_number==5 & question_number.x==5 & question_number.y==5   |  
              question_number==6 & question_number.x==6 & question_number.y==6   |
              question_number==7 & question_number.x==7 & question_number.y==7   | 
              question_number==8 & question_number.x==8 & question_number.y==8   | 
              question_number==9 & question_number.x==9 & question_number.y==9   | 
              question_number==10 & question_number.x==10 & question_number.y==10 | 
              question_number==11 & question_number.x==11 & question_number.y==11 |
              question_number==12 & question_number.x==12 & question_number.y==12 | 
              question_number==13 & question_number.x==13 & question_number.y==13 | 
              question_number==14 & question_number.x==14 & question_number.y==14 |
              question_number==15 & question_number.x==15 & question_number.y==15 |
              question_number==16 & question_number.x==16 & question_number.y==16 |
              question_number==17 & question_number.x==17 & question_number.y==17 |
              question_number==18 & question_number.x==18 & question_number.y==18 |
              question_number==19 & question_number.x==19 & question_number.y==19 |
              question_number==20 & question_number.x==20 & question_number.y==20 | 
              question_number==21 & question_number.x==21 & question_number.y==21 |
              question_number==22 & question_number.x==22 & question_number.y==22 | 
              question_number==23 & question_number.x==23 & question_number.y==23 |
              question_number==24 & question_number.x==24 & question_number.y==24 | 
              question_number==25 & question_number.x==25 & question_number.y==25 |
              question_number==26 & question_number.x==26 & question_number.y==26 | 
              question_number==27 & question_number.x==27 & question_number.y==27 |
              question_number==28 & question_number.x==28 & question_number.y==28
)
b <- subset(b, select = -c(question_number))

c <- filter(c, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

d <- filter(d, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

e <- filter(e, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

f <- filter(f, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

g <- filter(g, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

h <- filter(h, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

i <- filter(i, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

j <- filter(j, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

k <- filter(k, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

l <- filter(l, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

m <- filter(m, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

n <- filter(n, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

o <- filter(o, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

p <- filter(p, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

q <- filter(q, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

r <- filter(r, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

s <- filter(s, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

t <- filter(t, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

u <- filter(u, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

v <- filter(v, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

w <- filter(w, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

x <- filter(x, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

y <- filter(y, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

z <- filter(z, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

z1 <- filter(z1, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

z2 <- filter(z2, question_number.x==1 & question_number.y==1   |
              question_number.x==2 & question_number.y==2   |
              question_number.x==3 & question_number.y==3   |           
              question_number.x==4 & question_number.y==4   | 
              question_number.x==5 & question_number.y==5   |  
              question_number.x==6 & question_number.y==6   |
              question_number.x==7 & question_number.y==7   | 
              question_number.x==8 & question_number.y==8   | 
              question_number.x==9 & question_number.y==9   | 
              question_number.x==10 & question_number.y==10 | 
              question_number.x==11 & question_number.y==11 |
              question_number.x==12 & question_number.y==12 | 
              question_number.x==13 & question_number.y==13 | 
              question_number.x==14 & question_number.y==14 |
              question_number.x==15 & question_number.y==15 |
              question_number.x==16 & question_number.y==16 |
              question_number.x==17 & question_number.y==17 |
              question_number.x==18 & question_number.y==18 |
              question_number.x==19 & question_number.y==19 |
              question_number.x==20 & question_number.y==20 | 
              question_number.x==21 & question_number.y==21 |
              question_number.x==22 & question_number.y==22 | 
              question_number.x==23 & question_number.y==23 |
              question_number.x==24 & question_number.y==24 | 
              question_number.x==25 & question_number.y==25 |
              question_number.x==26 & question_number.y==26 | 
              question_number.x==27 & question_number.y==27 |
              question_number.x==28 & question_number.y==28
)

full <- rbind(a,b,c,d,e,f,g,h,i,j,
              k,l,m,n,o,p,q,r,s,t,
              u,v,w,x,y,z,z1,z2)

#get rid of rows with N/A
full2 <- na.omit(full)

#get rid of exact duplicates. i.e., the same id, question_number.x,
#                                            question_number.y, answer,
#                                            sign, done
raw_responses_complete <- distinct(full2) 
View(raw_responses_complete) 
raw_responses_complete <- subset(raw_responses_complete, 
                                 select = -c(question_number.x))
names(raw_responses_complete) [names(raw_responses_complete) == 
                                 "question_number.y"] <- "question_number"
View(raw_responses_complete)


##=========================##SAVE LONG DATA ##================================##
require(writexl)
write_xlsx(raw_responses_complete, "C:\\Users\\svens\\OneDrive\\Documenten\\2_Master_Sociology and Social Research\\LiU\\Forskningspraktik (771A41)\\data\\raw_responses_complete_long.xlsx")
##============================================================================##
