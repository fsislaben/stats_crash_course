library(tidyverse)
library(ggpubr)
library(rstatix)

data("selfesteem", package = "datarium")

set.seed(123)
data("selfesteem2", package = "datarium")
selfesteem2 %>% sample_n_by(treatment, size = 1)

# Gather the columns t1, t2 and t3 into long format.
# Convert id and time into factor variables
selfesteem2 <- selfesteem2 %>%
  gather(key = "time", value = "score", t1, t2, t3) %>%
  convert_as_factor(id, time)
# Inspect some random rows of the data by groups
set.seed(123)
selfesteem2 %>% sample_n_by(treatment, time, size = 1)

selfesteem2 %>%
  group_by(treatment, time) %>%
  get_summary_stats(score, type = "mean_sd")

bxp <- ggboxplot(
  selfesteem2, x = "time", y = "score",
  color = "treatment", palette = "jco"
)
bxp

selfesteem2 %>%
  group_by(treatment, time) %>%
  identify_outliers(score)

selfesteem2 %>%
  group_by(treatment, time) %>%
  shapiro_test(score)

ggqqplot(selfesteem2, "score", ggtheme = theme_bw()) +
  facet_grid(time ~ treatment, labeller = "label_both")

res.aov <- anova_test(
  data = selfesteem2, dv = score, wid = id,
  within = c(treatment, time)
)
get_anova_table(res.aov)

# Effect of treatment at each time point
one.way <- selfesteem2 %>%
  group_by(time) %>%
  anova_test(dv = score, wid = id, within = treatment) %>%
  get_anova_table() %>%
  adjust_pvalue(method = "bonferroni")
one.way

# Pairwise comparisons between treatment groups
pwc <- selfesteem2 %>%
  group_by(time) %>%
  pairwise_t_test(
    score ~ treatment, paired = TRUE,
    p.adjust.method = "bonferroni"
  )
pwc

# Effect of time at each level of treatment
one.way2 <- selfesteem2 %>%
  group_by(treatment) %>%
  anova_test(dv = score, wid = id, within = time) %>%
  get_anova_table() %>%
  adjust_pvalue(method = "bonferroni")
# Pairwise comparisons between time points
pwc2 <- selfesteem2 %>%
  group_by(treatment) %>%
  pairwise_t_test(
    score ~ time, paired = TRUE,
    p.adjust.method = "bonferroni"
  )
pwc2

# comparisons for treatment variable
selfesteem2 %>%
  pairwise_t_test(
    score ~ treatment, paired = TRUE, 
    p.adjust.method = "bonferroni"
  )
# comparisons for time variable
selfesteem2 %>%
  pairwise_t_test(
    score ~ time, paired = TRUE, 
    p.adjust.method = "bonferroni"
  )

pwc <- pwc %>% add_xy_position(x = "time")

# Visualization: box plots with p-values
png("./viz_out/repanova.png", units="in", width=8.9, height=5, res=300)
bxp + 
  stat_pvalue_manual(pwc, tip.length = 0, hide.ns = TRUE) +
  labs(
    subtitle = get_test_label(res.aov, detailed = TRUE),
    caption = get_pwc_label(pwc)
  )
dev.off()