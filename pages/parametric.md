# Parametric vs Non Parametric

***TL;DR - parametric statistics are are based on the assumption that the population(s) follows a normal distribution.
Nonparametric statistics are NOT based on the assumption that the population(s) in question falls under a normal distribution.
For each parametric statistical test, there is usually a nonparametric alternative: chi-square test of independence (parametric) vs Fisher's exact test (nonparametric).****

Now for those of you that do actually want to read a little bit, here we go.

Parametric and nonparametric statistics are mirror images of each other in a sense.
In order to understand what this means, we have to look at the assumptions that are made when using a particular statistical test.
The world of parametric statistics makes the the HUGE assumption that the populations being sampled are normally distributed.
However, we know just from existing in this world that this is not always the case.
Maybe the sample size is small and we don't truly know of it is representative of the larger population.
Or maybe we have a priori knowledge that the population we intend to sample is skewed in a particular direction or is potentially bimodal.

So how do we cope when our intended population is not normally distributed?
Well, we use statistics that are not parametric, aka nonparametric statistics.

Nonparametric statistics does NOT assume anything about the distribution of the population being sampled.
This means nonparametric statistics can be used if either if you population is normally distributed AND if your population is NOT normally distributed.

So, why in the world would be every even consider using a parametric test if nonparametric tests are basically a catch-all?

That's where your judgement has to enter the picture.
Although nonparametric statistics can be used in all situations, they generally have less statistical power than parametric statistics.
Parametric statistics are also more forgiving when the variance/spread of the groups being compared is different.

# Some examples pf parametric test and their nonparametric counterparts:

| Parametric      | Nonparametric             |
| --------------- | ------------------------- |
| 2-sample T-test | Wilcoxon rank-sum test    |
| Paired T-test   | Wilcoxon signed-rank test |
| ANOVA           | Kruskal Wallis test       |
