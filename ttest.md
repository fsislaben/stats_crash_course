# T-test
A a statisitical test used to determine if there is a significant difference between the means of two groups.
Typically the the data in question follows a normal distribution with an unknown variance.
Commonly, a T-test is used to determine if a particular treatment has an impact on a population of interest.

## Values needed to conduct a t-test

To conduct a T-test using jmp, excel, or R, you will need the your data points recorded in two columns; one column for each treatment.
Then conduct the analysis by specifying which column corresponds to which group.

## Values recovered from a t-test

The t-test formula will produce the following values. I have provided a brief description of what they are describing.
- degrees of freedom: (sample size - 1) the number of values that have the freedom to vary in the dataset 
- T-score: the ratio between the difference between two groups and the difference within the groups. A larger T-score indicates a larger difference between the groups than within the groups. A smaller T-scorce indicates a larger difference within the 