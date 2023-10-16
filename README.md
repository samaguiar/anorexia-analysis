## Anoreixa Analysis ##

### The Data ###
The data was retrieved from <a href = "https://stat4ds.rwth-aachen.de/data/">Index of Data Sets</a>. This project was created for MDSD-531: Statistics for Data Science at the University of the Cumberlands.

I created a descriptive graph and statistics, as well as, an 95% confidence interval for the 17 families that received treatment from Anorexia data file using the code below:

Input
#set path to working directory
setwd("~/Desktop/university-of-the-cumberlands/R")

#create data set
anorexiaData <- read.table("Anorexia.txt", header = TRUE)

#create new data fram with individual values (i.e: "c", "f", and "cb")
anorexiaC = anorexiaData[anorexiaData$therapy == "c",]
anorexiaF = anorexiaData[anorexiaData$therapy == "f",]
anorexiaCB = anorexiaData[anorexiaData$therapy == "cb",]

#create histogram for  anorexiaF
#note: I changed the bins from 5 to 10 to compare how the bins changed the visualization of the distribution
hist(anorexiaF$before, main = "Weights of Patients Before Reciving Treatment",
     xlab = "Weight in lbs", breaks = 10, xlim = c(65,100), col = "pink")
hist(anorexiaF$after, main = "Weights of Patients after Reciving Treatment",
     xlab = "Weight in lbs", breaks = 10, xlim = c(70,110), col="lightgreen")

#determine population mean and standard deviation for before and after
meanBefore = mean(anorexiaF$before)
messageMeanBefore <- paste0("The population mean is for the patients before 
                      treatment is ", meanBefore, '.')
print(messageMeanBefore)
meanAfter = mean(anorexiaF$after)
messageMeanAfter <- paste0("The population mean is for the patients before 
                      treatment is ", meanAfter, '.')
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

Output






> #determine population mean and standard deviation for before and after
[1] "The population mean is for the patients before treatment is 83.2294117647059."

[1] "The population mean is for the patients before treatment is 90.4941176470588."

[1] "The population standard deviation for  the patients before treatment is 4.86690682126958."

[1] "The population standard deviation for the patients after treatment is 8.22202712862261."

> #compute confidence interval for before and after treatment
> beforeInt

	One Sample t-test

data:  anorexiaF$before
t = 68.404, df = 16, p-value < 2.2e-16
alternative hypothesis: true mean is not equal to 0
95 percent confidence interval:
 80.65007 85.80876
sample estimates:
mean of x 
 83.22941 

> afterInt

	One Sample t-test

data:  anorexiaF$after
t = 44.025, df = 16, p-value < 2.2e-16
alternative hypothesis: true mean is not equal to 0
95 percent confidence interval:
 86.13664 94.85160
sample estimates:
mean of x 
 90.49412 

Based on the histogram, the weights of the patients before treatment are relatively normal, as the graph shows a bell-shaped curve. To confirm this, I changed the bin widths from 5 to 10 to ensure that the curve was relatively normal. I calculated the mean and the median to compare and found the mean of the before weights was 83.2 lbs and the median was 83.3 lbs, so I confirmed the distribution was relatively normal. Due to the normal curve, the standard deviation of 4.86 lbs, which is relatively small. 

The histogram for the weights after patients still looked similar to a bell-shaped curve, however, there is a gap in between the lower values and the majority of the data makes the distribution more left skewed. I confirmed the distribution by calculating the mean and median and found that the mean was 90.49 lbs and the median was 92.5 lbs. Since the mean was less than the median, I confirmed that the distribution of the weights after treatment was left skewed. The standard deviation for the weight after treatment, 8.22 lbs, was double that of the weight before treatment, suggesting there was more variability in the success of the treatment of patients gaining weight. 

The confidence interval  for the weights before treatment was (80.65007 85.80876). So, there is 95% confidence that the true mean falls between the ranges of 80.65 lbs and 85.81 lbs. The confidence interval for the weights after treatment was (86.13664, 94.85160). So, there is 95% confidence that the true mean falls between the ranges of 86.14 lbs and 94.85 lbs. Overall, the mean weight increased after treatment, suggesting the treatment was effective.


