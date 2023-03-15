library(ggplot2)
library(dplyr)
library(ggpubr)
library(BSDA)

# Set seed for reproducibility
set.seed(123)

# Simulate a population with mean 50 and standard deviation 10
population <- rnorm(n = 100, mean = 50, sd = 10)

# Take a sample of size 100 from the population
sample <- rnorm(n = 100, mean = 60, sd = 10)

dat <- data.frame(population, sample)
dat <- gather(dat)

# Calculate the sample mean and standard deviation
sample_mean <- mean(sample)
sample_sd <- sd(sample)

# Conduct a one-sample z-test to test the null hypothesis that the population mean is 50
z <- (sample_mean - 50) / (sample_sd / sqrt(100))
p_value <- 2 * pnorm(abs(z), lower.tail = FALSE)

par(mfrow=c(1,1))

p <- ggboxplot(dat, x = "key", y = "value",
               color = "key", palette = "lancet",
               add = "jitter")

res <- z.test(population, sample, sigma.x = 10, sigma.y = 10)

p + geom_text(x = 1, y = 90, label=paste0("p-value = ", formatC(res$p.value, format = "e", digits = 2)))

png("./viz_out/ztest.png", units="in", width=8.9, height=5, res=300)
p + geom_text(x = 1, y = 90, label=paste0("p-value = ", formatC(res$p.value, format = "e", digits = 2)))
dev.off()