# Investigating the Replication Crisis within Psychology

## Hypothesis
The sourced study sample has predictive value for whether a psychology study successfully replicates.
Expecting for larger sample sizes to be associated with a higher likelihood of successful replication
as opposed to smaller ones.

## Data
"Reproducibility Project: Psychology" (https://osf.io/ytpuq/files/fgjvw), Open
Science Collaboration (2015), 100 published studies used.

## Methods
- Cleaned data in Python (Pandas) and analyzed/tested the data in R using a two sample t-test which compared
means with sample sizes that replicated successfully vs. didn't replicate successfully.

## Procedure
### 1. Null and Alternative Hypotheses:
- H0: μ(replicated) - μ(not replicated) = 0 - No difference.
- HA: μ(replicated) - μ(not replicated) ≠ 0 - A difference between larger and smaller samples sizes in predicting successfully.
- Significance level: α = 0.05
### 2. Test Statistic:
t = -0.9951, df = 38

### 3. Critical Value:
Critical t-value for α = 0.05 at 38 degrees of freedom (2.024).

### 4. Decision: 
The calculated t-value did not exceed the critical value needed to fall into the rejection region, so failed to reject H0.

## Results
- 61 studies did not replicate and 39 did.
- Mean sample size: 94.1 (non-replicated) vs. 5,962.2 (replicated)
- p-value = 0.326

## Conclusion
The hypothesis was not supported, despite a large difference in the sample mean between groups. The calculated t-statistic did not fall within 
the rejection region at α = 0.05, so we failed to reject the null hypothesis. Since the p-value is also much higher than α and far from the 
rejection region, it even suggests that not only there is no real difference to support HA, but that evidence that does support
it is likely random. The wide confidence interval also reflects high variability within the data (-17,086, 6,070).

## Tools Used
Python (Pandas), R
