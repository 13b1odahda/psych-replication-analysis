# R
data <- read.csv("cleaned_psych_data.csv")

# Shows replication counts
table(data$Replicate..R.)

# Aggregates data based on average sample size by each group
aggregate(SampleSize ~ Replicate..R., data = data, FUN = mean)

# Box Plot
boxplot(SampleSize ~ Replicate..R., data = data,
        main = "Original Sample Size by Replication Outcome",
        xlab = "Replicated", ylab = "Original Sample Size")
dev.copy(png, "sample_size_boxplot.png")
dev.off()

# Critical Value
qt(0.975, df = 38)

# Hypothesis Test/Confidence Interval
t.test(SampleSize ~ Replicate..R., data = data)

