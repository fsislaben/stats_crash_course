# Statistics crash course: what to use when
Below is a flow chart that can be used to determine what sort of statistical test should be used for a particular type of dataset

#	Is the research question focused on comparing the means of two or more groups?

## Are the groups independent or related?

### Independent groups:

Are the data normally distributed?

-  Normally distributed: t-test or ANOVA

-  Not normally distributed: Mann-Whitney U test or Kruskal-Wallis test
    
Are the sample sizes equal or unequal?

- Equal sample sizes: t-test

- Unequal sample sizes: Welch's t-test
    
### Related groups:

Are the data normally distributed?

- Normally distributed: paired t-test or repeated measures ANOVA
    
- Not normally distributed: Wilcoxon signed-rank test or Friedman test
    
## Are the groups independent or paired?

Independent groups: chi-squared test or Fisher's exact test

Paired groups: McNemar's test
      
# Is the research question focused on comparing proportions or percentages between
two or more groups?
		i. Are the groups independent or related?
			1. Independent groups:
				a. Are the sample sizes large (at least 10 in each group)?
					i. Yes: z-test or chi-squared test
					ii. No: Fisher's exact test
			2. Related groups: McNemar's test
      
# Is the research question focused on determining the relationship between two
continuous variables?
		i. Is the relationship linear or non-linear?
			1. Linear relationship: Pearson's correlation or Spearman's rank correlation
			2. Non-linear relationship: non-parametric tests (e.g. Kendall's tau or Kendall's W)
	d. Is the research question focused on determining the relationship between a continuous and a categorical variable?
		i. Is the categorical variable nominal or ordinal?
			1. Nominal: ANOVA or Kruskal-Wallis test
			2. Ordinal: Jonckheere-Terpstra test or Wilcoxon rank-sum test
	e. Is the research question focused on testing the difference between two dependent proportions or percentages?
		i. McNemar's test
