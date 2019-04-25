#Make sub-scales
BRIEF$Inhibit_1 = apply(BRIEF[,c(5, 16, 29, 36, 43, 55, 58, 73)],1,sum, na.rm=TRUE)
BRIEF$Shift_1 = apply(BRIEF[,c(8,22,32,44,61,67)],1,sum, na.rm=TRUE)
BRIEF$Emotional_Control_1 = apply(BRIEF[,c(1,12,19,28,33,42,51,57,69,72)],1,sum, na.rm=TRUE)
BRIEF$Self_Monitor_1 = apply(BRIEF[,c(13,23,37,50,64,70)],1,sum, na.rm=TRUE)
BRIEF$Initiate_1 = apply(BRIEF[,c(6,14,20,25,45,49,53,62)],1,sum, na.rm=TRUE)
BRIEF$WM_1 = apply(BRIEF[,c(4,11,17,26,35,46,56,68)],1,sum, na.rm=TRUE)
BRIEF$Plan_1 = apply(BRIEF[,c(9,15,21,34,39,47,54,63,66,71)],1,sum, na.rm=TRUE)
BRIEF$Task_Mon_1 = apply(BRIEF[,c(2,18,24,41,52,75)],1,sum, na.rm=TRUE)
BRIEF$ORG_1 = apply(BRIEF[,c(3,7,30,31,40,60,65,74)],1,sum, na.rm=TRUE)

#meta-scales
BRIEF$Behav_Shift_1 = apply(BRIEF[,c(9,18,27,36,45)],1,sum, na.rm=TRUE)
BRIEF$Cog_Shift_1 = apply(BRIEF[,c(2,11,55,62,67)],1,sum, na.rm=TRUE)
BRIEF$BRI_1 = apply(BRIEF[,c(75:78)],1,sum, na.rm=TRUE)
BRIEF$MI_1 = apply(BRIEF[,c(79:62)],1,sum, na.rm=TRUE)
BRIEF$GEC_1 = apply(BRIEF[,c(86:87)],1,sum, na.rm=TRUE)
BRIEF$Total_1 = apply(BRIEF[,c(75:83)],1,sum, na.rm=TRUE)
