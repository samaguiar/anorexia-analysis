# anorexia-analysis
## Overview ##
This project focuses on constructing data visualizations, point estimates, and confidence intervals using R. 

## The Questions ##
1. Did treatment "f" help participants gain weight?
2. How can we calculate the confidence interval of the before and after weights of the participants?

## Data Source ##
The data set was obtained from https://stat4ds.rwth-aachen.de/data/. Originally, the data set classified the participants into three categories: "c", "cb", and "f". The data set was cleaned to only look at the 17 families that received treatment from Anorexia data, which were classifed as "f".

## Requirements ##
R and R studio were used to create data visualization and confidence intervals. No additional packages are needed.

## Features Included ##
1) Creating Histograms for the before and after weights to analyze skew and visualize changes in weight.
2) Calculated point estimates, like mean and standard deviation, for the before and after weights in the sample.
3) Determine the confidence intervals for the before and after weights in the sample.

## Next Steps ##
[] Compare the "f" treatment to "c" and "cb" to determine which treatment had a better success rate.
[] Create additional visualizations (i.e. box plot, violin blot, etc.)

## Visualizations & Interpretations ##
### Chicago: Household Income ###
To determine the distribution of the Chicago data set, I created a histogram of the income of each household:
<img width="467" alt="Screenshot 2023-09-22 at 10 19 14 AM" src="https://github.com/samaguiar/anorexia-analysis/assets/89755252/9e6ab072-b518-4525-a419-6c5896c620f1">

According to this histogram, the data has a right skewed distribution because the tail of the data is on the right. This means that the mean is greater than the median, as the tail has 
larger values that are increasing the mean. Next, I determine the sample population and standard deviation:

#### Output ####
> print(messageMean)
[1] "The population mean is 20.3333333333333."
> print(messageStdev)
[1] "The population standard deviation is 3.61923871675921."

So, for the population, the average household income is $20,333.34 with a standard deviation of $3,6192.24. Since the standard deviation is a bit larger, this confirms that the distribution is not normal and most likely skewed. This means we cannot guarantee that 68% of the data will fall between one standard deviation of the mean. 
Lastly, I determine the 95% confidence interval for the income:

#### Output ####
> incomeInt
One Sample t-test
data: chicagoData$income
t = 30.255, df = 29, p-value < 2.2e-16
alternative hypothesis: true mean is not equal to 0
95 percent confidence interval:
 18.95878 21.70788
sample estimates:
mean of x 
 20.33333 

This shows that with 95% confidence, the true mean income will fall between the range of $18,958.78 and $21,707.88.

