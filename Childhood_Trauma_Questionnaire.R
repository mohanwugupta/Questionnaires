#Count number of questions answered
CTQ$count=rowSums(!is.na(CTQ))

#Reverse score items
CTQ[,5] = 6 - CTQ[,5]
CTQ[,7] = 6 - CTQ[,7]
CTQ[,13] = 6 - CTQ[,13]
CTQ[,19] = 6 - CTQ[,19]
CTQ[,26] = 6 - CTQ[,26]
CTQ[,28] = 6 - CTQ[,28]

#subscales
CTQ$EA = apply(CTQ[c(3,8,14,18,25)],1,sum, na.rm=TRUE)
CTQ$PA = apply(CTQ[c(9,11,12,15,17)],1,sum, na.rm=TRUE)
CTQ$SA = apply(CTQ[c(20,21,23,24,27)],1,sum, na.rm=TRUE)
CTQ$EN = apply(CTQ[c(5,7,13,19,28)],1,sum, na.rm=TRUE)
CTQ$PN = apply(CTQ[c(1,2,4,6,26)],1,sum, na.rm=TRUE)
CTQ$TOTAL = apply(CTQ[29:34],1, sum, na.rm=T)
