library(ggstatsplot)

dat <- data.frame(
  "smoke_no" = c(7, 0),
  "smoke_yes" = c(2, 5),
  row.names = c("Athlete", "Non-athlete"),
  stringsAsFactors = FALSE
)
colnames(dat) <- c("Non-smoker", "Smoker")

dat

test <- fisher.test(dat)
test

x <- c()
for (row in rownames(dat)) {
  for (col in colnames(dat)) {
    x <- rbind(x, matrix(rep(c(row, col), dat[row, col]), ncol = 2, byrow = TRUE))
  }
}
df <- as.data.frame(x)
colnames(df) <- c("Sport_habits", "Smoking_habits")
df

# Fisher's exact test with raw data
test <- fisher.test(table(df))

# combine plot and statistical test with ggbarstats
library(ggstatsplot)
p <- ggbarstats(
  df, Smoking_habits, Sport_habits,
  results.subtitle = FALSE,
  subtitle = paste0(
    "Fisher's exact test", ", p-value = ",
    ifelse(test$p.value < 0.001, "< 0.001", round(test$p.value, 3))
  )
)

png("./viz_out/fisher.png", units="in", width=8.9, height=5, res=300)
p
dev.off()