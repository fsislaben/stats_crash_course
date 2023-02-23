![](./IS_Logo_Stacked_CommunityScience.png)

Below are guidelines that should be followed to determine what sort of statistical test should be used for a particular type of dataset

# Is the research question focused on comparing the means of two or more groups?

## Are the groups independent or related?

### Independent groups:

Are the data normally distributed?

-  Normally distributed: [t-test](./pages/ttest.md) or [ANOVA](./pages/anova.md)

-  Not normally distributed: Mann-Whitney U test or Kruskal-Wallis test
    
Are the sample sizes equal or unequal?

- Equal sample sizes: [t-test](./pages/ttest.md)

- Unequal sample sizes: Welch's t-test
    
### Related groups:

Are the data normally distributed?

- Normally distributed: paired t-test or repeated measures ANOVA
    
- Not normally distributed: Wilcoxon signed-rank test or Friedman test
    
## Are the groups independent or paired?

Independent groups: chi-squared test or Fisher's exact test

Paired groups: McNemar's test
      
# Is the research question focused on comparing proportions or percentages between two or more groups?

## Are the groups independent or related?

### Independent groups:

Are the sample sizes large (at least 10 in each group)?

- Yes: z-test or chi-squared test

- No: Fisher's exact test

Related groups: McNemar's test
      
# Is the research question focused on determining the relationship between two continuous variables?

## Is the relationship linear or non-linear?

- Linear relationship: Pearson's correlation or Spearman's rank correlation

- Non-linear relationship: non-parametric tests (e.g. Kendall's tau or Kendall's W)

# Is the research question focused on determining the relationship between a continuous and a categorical variable?

## Is the categorical variable nominal or ordinal?

- Nominal: [ANOVA](./pages/anova.md) or Kruskal-Wallis test

- Ordinal: Jonckheere-Terpstra test or Wilcoxon rank-sum test

# Is the research question focused on testing the difference between two dependent proportions or percentages?

- McNemar's test
