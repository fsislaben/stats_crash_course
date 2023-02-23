# T-test
A a statisitical test used to determine if there is a significant difference between the means of two groups.
Typically the the data in question follows a normal distribution with an unknown variance.
Commonly, a T-test is used to determine if a particular treatment has an impact on a population of interest.

An important point to keep in mind is the whether you intend on using a one-tailed or two-tailed T-test.
A one-tailed T-test looks for either a directional (increase or decrease) change in the mean while a two tailed T-test just looks for a change (could be an increase OR a decrease)  

## Values needed to conduct a t-test

To conduct a T-test using JMP, excel, or R, you will need the your data points recorded in two columns; one column for each treatment.
Then conduct the analysis by specifying which column corresponds to which group.

## Values recovered from a t-test

The t-test formula will produce the following values. I have provided a brief description of what they are describing.
- degrees of freedom: (sample size - 1) the number of values that have the freedom to vary in the dataset 
- T-score: the ratio between the difference between two groups and the difference within the groups. A larger T-score indicates a larger difference between the groups than within the groups. A smaller T-scorce indicates a larger difference within the 
- P-value: the probability that the results from your sample occured by random chance. Important note: the p-value does not indicate that the treatment is the CAUSE. All that it states is that the two means are significantly difference from each other

## Visualizing the results

Just because you ran an JMP does not mean you have to use JMP to visualize your results. As long as you have a statistically significant result you can generate the plots however you would like (e.g. Excel, Google Sheets, R, Python).
All you need to do is add an annotation to the figure that the P-value was $\lt$ 0.05.