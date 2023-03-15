library("ggpubr")

# Data in two numeric vectors
# ++++++++++++++++++++++++++
# Weight of the mice before treatment
before <-c(200.1, 190.9, 192.7, 213, 241.4, 196.9, 172.2, 185.5, 205.2, 193.7)
# Weight of the mice after treatment
after <-c(392.9, 393.2, 345.1, 393, 434, 427.9, 422, 383.9, 392.3, 352.2)
# Create a data frame
my_data <- data.frame( 
  group = rep(c("before", "after"), each = 10),
  weight = c(before,  after)
)

res <- wilcox.test(weight ~ group, data = my_data, paired = TRUE)
stat.test <- compare_means(weight ~ group, data = my_data, method = "wilcox", paired = TRUE)

stat.test <- stat.test %>% mutate(y.position = c(450))

p <- ggboxplot(my_data, x = "group", y = "weight", 
          color = "group", palette = c("#00AFBB", "#E7B800"),
          order = c("before", "after"),
          ylab = "Weight", xlab = "Groups", add = "jitter")

p + stat_pvalue_manual(stat.test, label = "p = {p.adj}")
