# What is a p-value?

P-values are one of the most important values recovered and reported following a statistical test, and at the same time they are one of the most misinterpreted test statistics.
I would like to clarify immediately that the the p-value is not NOT the probability that our hypothesis is correct but rather the probability that the sample in question was recovered from a population described under the null hypothesis.
Basically, if we assume the null hypothesis is true, how consistent is your data with the null hypothesis?

Ok that sounds good and all, but what does this actually mean in practice?

# P-value interpretation example

Let's suppose you posed this research question: "Do chihuahuas that eat beef weigh the same as chihuahuas that eat chicken, assuming they are consuming the same amount of the respective protein?"
First we gathered two samples, one from a population of chihuahuas that have been fed a strictly chicken based diet since birth and one from a population that have been fed a strictly beef based diet.
We then perform a T-test between the mass of the two samples and recover a p-value of < 0.05.
Now, how do we interpret this result?
Following the assumptions made in a T-test, the null hypothesis states that there is no significant difference in the mean weight between the two populations in question.
In other words, is there a good chance that both of these samples could have been blindly drawn from the SAME population?
In this case, the p-value indicates to us that the probability is < 5% that our two samples deviate from the scenario where there is no significant difference in the mean
