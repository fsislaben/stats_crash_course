# McNemar test

The McNemar test is a nonparametric test for paired [nominal data](../pages/catvsnumdata.md).
What this basically means is that you are finding a change in proportion between paired data.
The McNemar test can also be considered the nonparametric equivalent to the paired T-test.

An example of when to use the McNemar test is presented below:

Say you wanted to determine if a particular drug helps reduce the amount of joint pain experienced by an arthritic individual.
You record if your group is experiencing pain before and after administering the drug.

You can then create a contingency table with your observations and perform a McNemar test.

|                  | Pain (after) | No paint (after) |
| ---------------- | ------------ | ---------------- |
| Pain (before)    | 30           | 45               |
| No pain (before) | 50           | 67               |

There are 3 assumptions for the McNemar Test:
1) There must be one nominal variable with with two categories (yes/no, heads/tails, pass/fail)
2) The two groups in your dependent variable must be mutually exclusive; participants cannot appear in more than 1 groups
3) The sample must be random

If your data does meet these criteria you may want to consider using a [chi-square](../pages/chisquare.md)
