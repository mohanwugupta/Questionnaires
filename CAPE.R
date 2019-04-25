#Remove Unnecessary columns - demographics data
CAPE = sapply(CAPE[], as.numeric)
CAPE = as.data.frame(CAPE)
#Create pos dataframes
CAPE_pos_1 = CAPE[,c(3,9,11,13,19,21,25,27,31,37,41,45,49,53,57,59,63,65,79,81)]
CAPE_pos_dis_1 = CAPE[,c(4,10,12,14,20,22,26,28,32,38,42,46,50,54,58,60,64,66,80,82)]

#Create neg dataframes
CAPE_neg_1 = CAPE[,c(5,7,15,29,33,39,43,47,51,55,61,67,69,71)]
CAPE_neg_dis_1 = CAPE[,c(6,8,16,30,34,40,44,48,52,56,62,68,70,72)]

#Create dep dataframes
CAPE_dep_1 = CAPE[,c(1,17,23,35,73,75,77)]
CAPE_dep_dis_1 = CAPE[,c(2,18,24,36,74,76,78)]

#SCORE POS
################################modified how the positive.scores are calculated 
CAPE_pos_1$positive.scores_1 = rowSums(CAPE_pos_1[,1:20], na.rm = TRUE)
#compute the num of answers 
CAPE_pos_1$num.of.answers_1 = rowSums(!is.na(CAPE_pos_1[,1:20]))
#weighted positive scores in old data 
CAPE_pos_1 <- CAPE_pos_1 %>%
  mutate(pos.weighted.scores_1 = positive.scores_1/num.of.answers_1)

#SCORE POS_DIS
CAPE_pos_dis_1$positive.scores_1 = rowSums(CAPE_pos_dis_1[,1:20], na.rm = TRUE)
#compute the num of answers 
CAPE_pos_dis_1$num.of.answers_1 = rowSums(!is.na(CAPE_pos_dis_1[,1:20]))
#weighted positive scores in old data 
CAPE_pos_dis_1 <- CAPE_pos_dis_1 %>% 
  mutate(pos.dis.weighted.scores_1 = positive.scores_1/num.of.answers_1)

#SCORE NEG
CAPE_neg_1$negative.scores_1 = rowSums(CAPE_neg_1[,1:14], na.rm = TRUE)
#compute the num of answers 
CAPE_neg_1$num.of.answers_1 = rowSums(!is.na(CAPE_neg_1[,1:14]))
#weighted negative scores in old data 
CAPE_neg_1 <- CAPE_neg_1 %>%
  mutate(neg.weighted.scores_1 = negative.scores_1/num.of.answers_1)

#SCORE NEG_dis
CAPE_neg_dis_1$negative.scores_1 = rowSums(CAPE_neg_dis_1[,1:14], na.rm = TRUE)
#compute the num of answers 
CAPE_neg_dis_1$num.of.answers_1 = rowSums(!is.na(CAPE_neg_dis_1[,1:14]))
#weighted negative scores in old data 
CAPE_neg_dis_1 <- CAPE_neg_dis_1 %>%
  mutate(neg.dis.weighted.scores_1 = negative.scores_1/num.of.answers_1)

#SCORE DEP
CAPE_dep_1$dep.scores_1 = rowSums(CAPE_dep_1[,1:7], na.rm = TRUE)
#compute the num of answers 
CAPE_dep_1$num.of.answers_1 = rowSums(!is.na(CAPE_dep_1[,1:7]))
#weighted negative scores in old data 
CAPE_dep_1 <- CAPE_dep_1 %>%
  mutate(dep.weighted.scores_1 = dep.scores_1/num.of.answers_1)

#SCORE DEP_dis
CAPE_dep_dis_1$dep.scores_1 = rowSums(CAPE_dep_dis_1[1:7], na.rm = TRUE)
#compute the num of answers 
CAPE_dep_dis_1$num.of.answers_1 = rowSums(!is.na(CAPE_dep_dis_1[,1:7]))
#weighted negative scores in old data 
CAPE_dep_dis_1 <- CAPE_dep_dis_1 %>%
  mutate(dep.dis.weighted.scores_1 = dep.scores_1/num.of.answers_1)
