![](./IS_Logo_Stacked_CommunityScience.png)

Below are guidelines that should be followed to determine what sort of statistical test should be used for a particular type of dataset.
Before you jump into the decision tree part of this page, take a moment to read through the sections linked in the preface.
These are important background tidbits that will be extremely useful when understanding how a particular statistical test works.

# Preface

[Click here](./pages/preface/example_logic.md) to see an example of ***how to use this website*** to aid you through the through process of identifying the type of data you have and what statistical analysis you should choose based on the assumptions you are making about your data.

[Click here](./pages/preface/normal_dist.md) to understand what a ***normal distribution*** is and why it is referenced so much.

[Click here](./pages/preface/hypotheses.md) to understand the difference between the ***null and alternative hypotheses.***

[Click here](./pages/preface/p-value.md) to understand how to ***interpret a p-value.***
This is extremely an extremely important concept to understand so you do not over-interpret what the test statistic is reporting.

[Click here](./pages/preface/parametric.md) to understand the difference between ***parametric and nonparametric statistics.***
Understanding the difference between them is key to understanding when to use one or the other.

[Click here](./pages/preface/catvsnumdata.md) to understand the difference between ***categorical and numeric data.***

[Click here](./pages/preface/jonvskrusvsfried.md) to understand the ***difference be the the Kruskal-Wallis test, the Friedman test, and the Jonckheere-Terpstra test***.
These are are extremely similar tests so it would be good to clear up these right now.

## Tests covered in this website

Parametric:
- [ANOVA](./pages/anova.md)
- [Chi-squared test](./pages/chisquare.md)
- [Paired samples T-test](./pages/pairedttest.md)
- [Pearson's correlation](./pages/pearsons.md)
- [Repeated measures ANOVA](./pages/repanova.md)
- [T-test](./pages/ttest.md)
- [Z-test](./pages/ztest.md)

Nonparametric:
- [Fisher's exact test](./pages/fisherstest.md)
- [Friedman test](./pages/friedman.md)
- [Jonckheere-Terpstra test](./pages/jonckheere.md)
- [Kendall's tau](./pages/kendallstau.md)
- [Kendall's W](./pages/kendallsw.md)
- [Kruskal-Wallis test](./pages/kruskal.md)
- [Mann-Whitney U test](./pages/manwhit.md)
- [McNemar's test](./pages/mcnemar.md)
- [Spearman's rank correlation](./pages/spearmans.md)
- [Wilcoxon rank-sum test](./pages/wilcoxon.md)
- [Wilcoxon signed-rank test](./pages/wilcoxon.md)

# Is the research question focused on comparing the means of two or more groups?

## Are the groups independent or related?

### Independent groups:

Are the data normally distributed?

-  Normally distributed: [t-test](./pages/ttest.md) or [ANOVA](./pages/anova.md)

-  Not normally distributed: [Mann-Whitney U test](./pages/manwhit.md) or [Kruskal-Wallis test](./pages/kruskal.md)

Are the sample sizes equal or unequal?

- Equal sample sizes: [t-test](./pages/ttest.md)

- Unequal sample sizes: [Welch's t-test](./pages/ttest.md)

### Related groups:

Are the data normally distributed?

- Normally distributed: [paired samples t-test](./pages/pairedttest.md) or [repeated measures ANOVA](./pages/repanova.md)

- Not normally distributed: [Wilcoxon signed-rank test](./pages/wilcoxon.md) or [Friedman test](./pages/friedman.md)

## Are the groups independent or paired?

Independent groups: [chi-squared test](./pages/chisquare.md) or [Fisher's exact test](./pages/fisherstest.md)

Paired groups: [McNemar's test](./pages/mcnemar.md)

# Is the research question focused on comparing proportions or percentages between two or more groups?

## Are the groups independent or related?

### Independent groups:

Are the sample sizes large (at least 10 in each group)?

- Yes: [z-test](./pages/ztest.md) or [chi-squared test](./pages/chisquare.md)

- No: [Fisher's exact test](./pages/fisherstest.md)

Related groups: [McNemar's test](./pages/mcnemar.md)

# Is the research question focused on determining the relationship between two continuous variables?

## Is the relationship linear or non-linear?

- Linear relationship: [Pearson's correlation](./pages/pearsons.md) or [Spearman's rank correlation](./pages/spearmans.md)

- Non-linear relationship: non-parametric tests (e.g. [Kendall's tau](./pages/kendallstau.md) or [Kendall's W](./pages/kendallsw.md))

# Is the research question focused on determining the relationship between a continuous and a categorical variable?

## Is the categorical variable nominal or ordinal?

- Nominal: [ANOVA](./pages/anova.md) or [Kruskal-Wallis test](./pages/kruskal.md)

- Ordinal: Jonckheere-Terpstra test or [Wilcoxon rank-sum test](./pages/wilcoxon.md)

# Is the research question focused on testing the difference between two dependent proportions or percentages?

- [McNemar's test](./pages/mcnemar.md)
