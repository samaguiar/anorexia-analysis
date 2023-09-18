#set path to working directory
setwd("~/Desktop/university-of-the-cumberlands/R")

#create data set
anorexiaData <- read.table("Anorexia.txt", header = TRUE)

#create new data fram with individual values (i.e: "c", "f", and "cb")
anorexiaC = anorexiaData[anorexiaData$therapy == "c",]
anorexiaF = anorexiaData[anorexiaData$therapy == "f",]
anorexiaCB = anorexiaData[anorexiaData$therapy == "cb",]

#create histogram for anorexiaF
hist(anorexiaF$before, main = "Weights of Patients Before Receiving Treatment",
     xlab = "Weight in lbs", breaks = 5, xlim = c(65,100), col = "pink")
hist(anorexiaF$after, main = "Weights of Patients after Receiving Treatment",
     xlab = "Weight in lbs", breaks = 5, xlim = c(70,110), col="lightgreen")

#determine population mean and standard deviation for before and after
meanBefore = mean(anorexiaF$before)
medianBefore = median(anorexiaF$before)
messageMeanBefore <- paste0("The population mean is for the patients before 
                      treatment is ", meanBefore, ' and the median is ',
                      medianBefore, '.')
print(messageMeanBefore)
meanAfter = mean(anorexiaF$after)
medianAfter = median(anorexiaF$after)
messageMeanAfter <- paste0("The population mean is for the patients before 
                      treatment is ", meanAfter, ' and the median is ', 
                           medinAfter, '.')
print(messageMeanAfter)

smple_stdevBefore = sd(anorexiaF$before)
pop_stdevBefore = smple_stdevBefore * sqrt((length(anorexiaF$before)-1)/
                                 length(anorexiaF$before))
messageStdevBefore <- paste0("The population standard deviation for
                             the patients before treatment is ", 
                             pop_stdevBefore, '.')
print(messageStdevBefore)

smple_stdevAfter = sd(anorexiaF$after)
pop_stdevAfter = smple_stdevAfter * sqrt((length(anorexiaF$after)-1)/
                                             length(anorexiaF$after))
messageStdevAfter <- paste0("The population standard deviation for
                             the patients after treatment is ", 
                             pop_stdevAfter, '.')
print(messageStdevAfter)

#compute confidence interval for before and after treatment
beforeInt <- t.test(anorexiaF$before, conf.level = 0.95)
beforeInt

afterInt <- t.test(anorexiaF$after, conf.level = 0.95)
afterInt