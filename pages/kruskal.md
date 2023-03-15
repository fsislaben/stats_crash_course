# Kruskal-Wallis test

Say you want to compare three or more groups of data BUT you have the sneaking suspicion that your data does not follow a normal distribution.
Because of this, you know that you cannot use an [ANOVA](../pages/anova.md) since that is a parametric test.
But thankfully there is a non-parametric version of the one-way ANOVA: the Kruskal-Wallis test.

The Kruskal-Wallis test assume normality or equal variances between groups.

The ***null hypothesis*** is that there is no difference between the tested groups.

The ***alternative hypothesis*** is that there is a difference between the tested groups.

Much like the one-way ANOVA, the Kruskal-Wallis test will only tell you ***if there's a significant difference among groups, NOT which groups are different.***

In order to determine which group(s) are responsible for the difference, a post hoc test is required.

## Setting up a Kruskal-Wallis test

As as example, I'm going to look for a difference in plant growth based on the type of fertilizer applied.
I have 30 plants and split then into three groups of 10.
I measure the heights of the plants at the beginning of the treatment the apply the fertilizer for one month.
At the end of the month I measure the height of each plant and record the difference between the starting and ending heights.

The ***null hypothesis*** is that the different fertilizers ***has no impact*** on the amount of growth.
The ***alternative hypothesis*** is that the different fertilizers ***has an impact*** on the amount of growth.

My data at this point in the experiment should look something like the table presented below:

| Fertilizer 1 | Fertilizer 2 | Fertilizer 3 |
| ------------ | ------------ | ------------ |
| 7            | 15           | 6            |
| 14           | 17           | 8            |
| 14           | 13           | 8            |
| 13           | 15           | 9            |
| 12           | 15           | 5            |
| 9            | 13           | 14           |
| 6            | 9            | 13           |
| 14           | 12           | 8            |
| 12           | 10           | 10           |
| 8            | 8            | 9            |

The Kruskal-Wallis test will return a p-value.
If the p-value is < 0.05, you can reject your null hypothesis; if the p-value is ≥ 0.05 you fail to reject your null hypothesis.

## Post hoc test

A good post hoc test to apply to the results of a Kruskal-Wallis test is the Dunn's test.
The the Dunn's test is the nonparametric alternative to the Tukey test; the common post hoc test for the ANOVA.
The Dunn's test does multiple pairwise comparisons between the medians of each group.
This will tell you which groups within the dataset contain the statistically significant difference.

## Visualizing the results

Just because you ran the analysis in JMP does not mean you have to use JMP to visualize your results. As long as you have a statistically significant result you can generate the plots however you would like (e.g., Excel, Google Sheets, R, Python).
All you need to do is add an annotation to the figure that specify which groups have a p-value was < 0.05.
A box-and-whisker plot would be a good way of visualizing the results of a Kruskal-Wallis test.
The box-and-whisker plot would present both the spread of the data while also incorporating error bars/confidence intervals.

![](../pages/images/example_viz/viz_out/kruskal_viz.png)
