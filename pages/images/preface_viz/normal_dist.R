#Author DataFlair
x <- seq(-20, 20, by = .1)
y <- dnorm(x, mean = 0, sd = 5.0)
plot(x,y, main = "Normal Distribution", col = "blue")

dnorm_limit <- function(x) {
  y <- dnorm(x)
  y[x < 0  |  x > 2] <- NA
  return(y)
}

base <- ggplot() + xlim(-10, 10)
p <- base +
      geom_function(aes(colour = "Population 1"), fun = dnorm, args = list(mean = -3, sd = 2), size = 2) +
      geom_function(aes(colour = "Population 2"), fun = dnorm, args = list(mean = 3, sd = 2), size = 2) +
      geom_ribbon() +
      theme_classic()

criticalValues <- qnorm(c(.025,.975))

shadeNormalTwoTailedLeft <- rbind(c(criticalValues[1],0), subset(normalDistribution, x < criticalValues[1]))

shadeNormalTwoTailedRight <- rbind(c(criticalValues[2],0), subset(normalDistribution, x > criticalValues[2]), c(3,0))
