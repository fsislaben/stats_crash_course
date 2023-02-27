![](./IS_Logo_Stacked_CommunityScience.png)

Below are guidelines that should be followed to determine what sort of statistical test should be used for a particular type of dataset.

[Click here](./pages/example_logic.md) to see an example of how to use this website to aid you through the through process of identifying the type of data you have and what statistical analysis you should choose based on the assumptions you are making about your data.

[Click here](./pages/p-value.md) to understand how to interpret a p-value.
This is extremely an extremely important concept to understand so you do not over-interpret what the test statistic is reporting.

[Click here](./pages/parametric.md) to understand the difference between parametric and nonparametric statistics.
Understanding the difference between them is key to understanding when to use one or the other.

# Is the research question focused on comparing the means of two or more groups?

## Are the groups independent or related?

### Independent groups:

Are the data normally distributed?

-  Normally distributed: [t-test](./pages/ttest.md) or [ANOVA](./pages/anova.md)

-  Not normally distributed: Mann-Whitney U test or Kruskal-Wallis test

Are the sample sizes equal or unequal?

- Equal sample sizes: [t-test](./pages/ttest.md)

- Unequal sample sizes: [Welch's t-test](./pages/ttest.md)

### Related groups:

Are the data normally distributed?

- Normally distributed: [paired samples t-test](./pages/pairedttest.md) or repeated measures ANOVA

- Not normally distributed: [Wilcoxon signed-rank test](./pages/wilcoxon.md) or Friedman test

## Are the groups independent or paired?

Independent groups: [chi-squared test](./pages/chisquare.md) or [Fisher's exact test](./pages/fisherstest.md)

Paired groups: McNemar's test

# Is the research question focused on comparing proportions or percentages between two or more groups?

## Are the groups independent or related?

### Independent groups:

Are the sample sizes large (at least 10 in each group)?

- Yes: z-test or [chi-squared test](./pages/chisquare.md)

- No: [Fisher's exact test](./pages/fisherstest.md)

Related groups: McNemar's test

# Is the research question focused on determining the relationship between two continuous variables?

## Is the relationship linear or non-linear?

- Linear relationship: Pearson's correlation or Spearman's rank correlation

- Non-linear relationship: non-parametric tests (e.g. Kendall's tau or Kendall's W)

# Is the research question focused on determining the relationship between a continuous and a categorical variable?

## Is the categorical variable nominal or ordinal?

- Nominal: [ANOVA](./pages/anova.md) or Kruskal-Wallis test

- Ordinal: Jonckheere-Terpstra test or [Wilcoxon rank-sum test](./pages/wilcoxon.md)

# Is the research question focused on testing the difference between two dependent proportions or percentages?

- McNemar's test
