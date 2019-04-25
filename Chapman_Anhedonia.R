#Change data_frame to numeric from charaChaper
Chap[] <- lapply(Chap, function(x) as.numeric(as.character(x)))

#SubtraChap 1 from all Chapman columns for easy addition later
Chap[] = sweep(Chap,2,1)

#Create Physical, social, and TEPS dataframes
C_P = Chap %>% select(starts_with("CHAPP"))
C_S = Chap %>% select(starts_with("CHAPS"))

#Reverse score Chapman Physical Anhedonia Scale, these columns are the ones that don't go with the pathological 
#direChapion e.g. I always feel happy in my life, if answered F, should be coded into a T
#Before the reverse, T is 0, F is 1, after the reverse the meanings of the following items have changed 
C_P[,c(1,2,3,6,17,19,20,23,24,29,30,33,34,35,36,37,38,39,41,44,45,46,48,52,53,57,58,59,60,61)] <- 1 - C_P[,c(1,2,3,6,17,19,20,23,24,29,30,33,34,35,36,37,38,39,41,44,45,46,48,52,53,57,58,59,60,61)]
#reverse the scores again so T is 1, F is 0 for easy summation 
C_P[] <- 1 - C_P[]

#Reverse score Social Anhedonia Scale
C_S[,c(4,5,7,8,9,11,12,15,16,18,19,20,24,25,30,31,33,36)] <- 1 - C_S[,c(4,5,7,8,9,11,12,15,16,18,19,20,24,25,30,31,33,36)]
#reverse the scores again so T is 1, F is 0 for easy summation 
C_S[] <- 1 - C_S[]

#SCORE Chapman (sum the Ts together)
C_P <- C_P %>%
  mutate(Phys_Score_1 = apply(.,1,sum, na.rm=T)) %>%
  mutate(weighted_Phys_Score_1 = Phys_Score_1/(61-rowSums(is.na(.))))

C_S <- C_S %>%
  mutate(Soc_Score_1 = apply(.,1,sum, na.rm=T)) %>%
  mutate(weighted_Soc_Score_1 = Soc_Score_1/(40-rowSums(is.na(.))))
