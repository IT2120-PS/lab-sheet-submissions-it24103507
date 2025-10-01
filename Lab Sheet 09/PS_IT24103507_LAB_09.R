setwd("C:\\Users\\USER\\Downloads\\IT24103507")

set.seed(123)
sample_data <- rnorm(25, mean =45, sd=2)
sample_data

test_result <- t.test(sample_data, mu = 46, alternative = "less")
test_result

t_value <- test_result$statistic
p_value <- test_result$p.value

conf_interval <- test_result$conf.int

cat("Test statistic (t):", t_value )
cat("P-value:", p_value )
cat("Confidence Interval:", conf_interval )
