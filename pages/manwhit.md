# Mann-Whitney U

Surprise! This is just another name for the Wilcoxon rank-sum test.


## Wilcoxon rank sum: do two ***unpaired*** populations have the same mean?
  - ***Null hypothesis:*** there is no significant difference between two groups
  - ***Alternative hypothesis:*** there is significant difference between the two groups

### Here is an example of how your data should be formatted for a Wilcoxon rank sum test:

| Height Group 1 (inches) | Height Group 2 (inches)  |
| ----------------------- | ------------------------ |
| 68                      | 48                       |
| 70                      | 50                       |
| 75                      | 60                       |
| 70                      | 52                       |
| 72                      | 55                       |
| 73                      | 58                       |
| 77                      | 56                       |
| 78                      | 59                       |
| 71                      | 51                       |


## Values returned from a Wilcoxon test

The Wilcoxon test will produce the following values. I have provided a brief description of how to interpret them.
- Z-score: the number of standard deviations away from the mean out value of interest is.
- P-value: the probability that the results from your sample occurred by random chance. Important note: the p-value does not indicate that the treatment is the CAUSE. All that it states is that the two means are significantly different from each other.
  - P-value < 0.05 indicates the means of each group are different from each other (Reject the null hypothesis)
  - P-value > 0.05 indicates that you cannot conclude that means of each group are different from each other (Fail to reject the null hypothesis)
