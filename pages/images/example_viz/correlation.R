library(MASS)

X<-mvrnorm(20,mu=c(5,6),Sigma=matrix(c(1,0.97,0.97,1),ncol=2),empirical=TRUE)
cor(X)
plot(X[,1], X[,2])

Y<-mvrnorm(20,mu=c(5,6),Sigma=matrix(c(1,-0.97,-0.97,1),ncol=2),empirical=TRUE)
cor(Y)
plot(Y[,1], Y[,2])

Z<-mvrnorm(20,mu=c(5,6),Sigma=matrix(c(1,0,0,1),ncol=2),empirical=TRUE)
cor(Z)
plot(Z[,1], Z[,2])


png("./viz_out/correlation.png", units="in", width=8.9, height=5, res=300)
par(mfrow=c(1,3))
plot(Y[,1], Y[,2], main = "Correlation of -0.97", col = "green", xlab = "x axis", ylab = "y axis")
abline(lm(Y[,2] ~ Y[,1]), col = "green")
plot(Z[,1], Z[,2], main = "Correlation of 0", col = "blue", xlab = "x axis", ylab = "y axis")
abline(lm(Z[,2] ~ Z[,1]), col = "blue")
plot(X[,1], X[,2], main = "Correlation of 0.97", col = "red", xlab = "x axis", ylab = "y axis")
abline(lm(X[,2] ~ X[,1]), col = "red")
dev.off()