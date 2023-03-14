
# Load in the dat data and store it in an object
dat <- iris

# For this example we will be removing virginica from the dataset 
dat <- dat[dat$Species != "virginica",]
dat$Species <- factor(dat$Species)

# Assign colors for each species of 
col <- rep("black", length(dat$Species))
col[dat$Species == "setosa"] <- "red"
col[dat$Species == "versicolor"] <- "green"

# Quick pairwise plots of the variables to easily visualize the data
pairs(dat[,1:4], col = col)
legend(0.85,0.6, as.vector(unique(dat$Species)))

###################
### Chi Squared ###
###################

# A Chi-squared test tests if the observed frequencies in a data set match the predicted frequencies
# Non parametric meaning it does not assume the data are normally distributed
# We can do this for categorical variables using a contingency table

# Let's make a contingency table for the data
# First we make cutoffs within the data, simply breaking it above and below the median value
# Cutting the dataset in half at the median
dat$Petal.Width.Cat <- cut(dat$Petal.Width, breaks = quantile(dat$Petal.Width, probs = seq(0, 1, 0.5)), include.lowest = TRUE)

# Then we conver the numerical binnings into values we can understand
levels(dat$Petal.Width.Cat) <- c("Below", "Above")

# Take a brief look at the data
head(dat)

dat <- dat[,!(names(dat) %in% "Petal.Width")]
head(dat)  

cont <- table(dat$Petal.Width.Cat, dat$Species)
cont

# H0: Petal widths between different species are indistinguishable
# Ha: Petal widths between different species are different 

Xsqt <- chisq.test(cont)
Xsqt

# This allows us to reject the null hypothesis and accept the alternalte hypothesis. 
# Or, petal widths are distinctly different between species

#####################################
### Principle Compenents Analysis ###
#####################################

# Let's reload the iris data into our data object
dat <- iris

log.dat <- log(dat[, 1:4])
dat.species <- dat[, 5]
par(mfrow = c(2, 2))
hist(log.dat$Sepal.Length, breaks = 20)
hist(log.dat$Sepal.Width, breaks = 20)
hist(log.dat$Petal.Length, breaks = 20)
hist(log.dat$Petal.Width, breaks = 20)

pr.dat <- prcomp(log.dat, center = TRUE, scale. = TRUE)
summary(pr.dat)
# 73.3% of variance in the data is explained by PC1, 22.7% by PC2, 3.3% by PC3 and 0.6% by PC4

library(devtools)
library(ggbiplot)
ggbiplot(pr.dat, obs.scale = 1, var.scale = 1,
         groups = dat$Species, ellipse = TRUE, circle = TRUE,ellipse.prob = 0.68) +
  scale_color_discrete(name = '') +
  theme(legend.direction = 'horizontal', legend.position = 'top')
