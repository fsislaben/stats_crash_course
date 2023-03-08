# What is a p-value?

![](../pages/images/pval_viz.md)

P-values are one of the most important values recovered and reported following a statistical test, and at the same time they are one of the most misinterpreted test statistics.
I would like to clarify immediately that the p-value is NOT the probability that our hypothesis is correct but rather the probability that the sample in question was recovered from a population described under the null hypothesis.
Basically, if we assume the null hypothesis is true, how consistent is your data with the null hypothesis?

An important thing to remember when discussing p-values in regard to your null and alternative hypotheses is that ***you can never accept or reject your alternative hypothesis; you can only reject or fail to reject your null hypothesis.***

If your test returns a p-value of < 0.05 you say "I can reject the null hypothesis".

If your test returns a p-value of > 0.05 you say "I fail to reject the null hypothesis".

Ok that sounds good and all, but what does this actually mean in practice?

# P-value interpretation examples

## P-values and coins:
Let's start with a basic example.
We buy a coin from a magic shop that claims to a biased coin and we want to find out if the claims are true.
We know that a fair coin has a 50/50 chance of returning either heads or tails.
So, we decide to flip our coin 100 times and record the number of heads and tails the coin returns.

To determine if this is a fair coin, we decided to use a chi-square goodness of fit test.

The null hypothesis in this scenario is that sample data matches the expected distribution (in this case 50/50).
The alternative hypothesis is that the sample does NOT match the expected distribution.

We apply the chi-square test and recover a p-value of < 0.05.
This means the probability of recovering the results we did under the assumption that the expected (fair) distribution is 50/50 is < 5%.

Therefore, we can reject the null hypothesis and conclude that our data does not match the expected distribution.

## P-values and dogs:
Now, let's try a more complex example.
Suppose I have the following research question: "Do chihuahuas that eat beef weigh the same as chihuahuas that eat chicken, assuming they are consuming the same amount of the respective protein?"

First, we gathered two samples: 1) masses from a population of chihuahuas that have been fed a strictly chicken-based diet since birth and 2) masses from a population that have been fed a strictly beef-based diet.
We then perform a T-test between the masses of the two samples.

The null hypothesis in this scenario is that the means between the two groups are the same.
The alternative hypothesis in this scenario is that the means between two groups are different.

We recover a p-value of < 0.05.

Conceptually, what does this mean?
Bear with me here because the following explanation is going to get a little abstract.
Our null hypothesis in this case is the representation of an imaginary population that is normally distributed that contains both of our samples.
If we were to randomly draw samples from this imaginary, normally distributed population, what are the odds that we recovered our chicken (or beef) sample set the way we recovered them in our actual sampling?

In this case, the answer to that question is: there is a < 5% chance that we could have recovered our sampling scheme if both of our chihuahua groups existed in the same, normally distributed, population.

Therefore, we can reject the null hypothesis and conclude that the mean mass between our two chihuahua groups are NOT the same.
