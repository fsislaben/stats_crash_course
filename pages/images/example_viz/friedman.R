library(tidyverse)
library(ggpubr)
library(rstatix)

data("selfesteem", package = "datarium")
head(selfesteem, 3)

selfesteem <- selfesteem %>%
  gather(key = "time", value = "score", t1, t2, t3) %>%
  convert_as_factor(id, time)
head(selfesteem, 3)

selfesteem %>%
  group_by(time) %>%
  get_summary_stats(score, type = "common")

ggboxplot(selfesteem, x = "time", y = "score", add = "jitter")

res.fried <- selfesteem %>% friedman_test(score ~ time |id)
res.fried

selfesteem %>% friedman_effsize(score ~ time |id)

# pairwise comparisons
pwc <- selfesteem %>%
  wilcox_test(score ~ time, paired = TRUE, p.adjust.method = "bonferroni")
pwc

pwc2 <- selfesteem %>%
  sign_test(score ~ time, p.adjust.method = "bonferroni")
pwc2

# Visualization: box plots with p-values
pwc <- pwc %>% add_xy_position(x = "time")
p <- ggboxplot(selfesteem, x = "time", y = "score", add = "point", color = "time", palette = "ucscgb") +
  stat_pvalue_manual(pwc, hide.ns = TRUE) +
  labs(
    subtitle = get_test_label(res.fried,  detailed = TRUE),
    caption = get_pwc_label(pwc)
  )

png("./viz_out/friedman.png", units="in", width=8.9, height=5, res=300)
p
dev.off()