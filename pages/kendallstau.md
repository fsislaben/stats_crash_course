# Kendall's Tau

Kendall's tau is a non-parametric correlation coefficient that measures the strength and direction of association between two variables that are measured on an ordinal scale.
Like Spearman's rank correlation, Kendall's tau does not make any assumptions about the distribution of the data.

Kendall's tau is calculated by comparing the number of concordant and discordant pairs of observations between the two variables being studied.
A concordant pair is one in which the ranks of both variables agree (i.e., if one observation has a higher rank than another in one variable, it also has a higher rank in the other variable), while a discordant pair is one in which the ranks of the two variables disagree (i.e., if one observation has a higher rank than another in one variable, it has a lower rank in the other variable).

The value of Kendall's tau can mathematically range from -1 to +1.
However, practically speaking this negative sign does not mean much.
A tau of 0 indicates no relationship while a tau of 1 indicates a perfect relationship.

Kendall's tau is particularly useful when analyzing data that are ranked or ordered, such as when comparing the preferences of individuals for different products or when studying the rankings of different sports teams over a season.

# Example of when and how to use Kendall's tau

Let's say you're a manager at an ice cream parlor, and you want to know whether your customers prefer vanilla, chocolate, or strawberry ice cream.
Instead of conducting a survey, you decide to observe the order in which customers choose their ice cream flavors.

You record the order of ice cream flavors chosen by 10 customers, and end up with the following data:

|             | Choice 1   | Choice 2   | Choice 3   |
| ----------- | ---------- | ---------- | ---------- |
| Customer 1  | Chocolate  | Vanilla    | Strawberry |
| Customer 2  | Vanilla    | Chocolate  | Strawberry |
| Customer 3  | Strawberry | Chocolate  | Vanilla    |
| Customer 4  | Chocolate  | Strawberry | Vanilla    |
| Customer 5  | Vanilla    | Strawberry | Chocolate  |
| Customer 6  | Strawberry | Vanilla    | Chocolate  |
| Customer 7  | Chocolate  | Vanilla    | Strawberry |
| Customer 8  | Vanilla    | Chocolate  | Strawberry |
| Customer 9  | Strawberry | Vanilla    | Chocolate  |
| Customer 10 | Chocolate  | Strawberry | Vanilla    |

You want to know if there is a correlation between the order in which customers choose their ice cream flavors.
To do this, you can use Kendall's tau.

So, you run Kendall's tau and find that the tau value is 0.4, which indicates a moderate positive correlation.
This means that customers are more likely to choose certain flavors in a specific order, but there is still some variability in their preferences.

# Visualizing the results

Just because you ran the analysis in JMP does not mean you have to use JMP to visualize your results.
As long as you have a statistically significant result you can generate the plots however you would like (e.g., Excel, Google Sheets, R, Python).
All you need to do is add an annotation to the figure that has the tau value displayed.
A scatter plot would be a good way of visualizing the results of a Kendall's tau test.
The scatter plot would present both the spread of the data while also visualizing the trend between the variables.
