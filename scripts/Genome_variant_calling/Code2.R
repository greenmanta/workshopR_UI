# Count how many rows are associated with each sample in the data 

var_tb %>% count(SAMPLE)

# Sorting the counts 

var_tb %>% count(SAMPLE, sort = TRUE)

# Distribution of genes per sample and counts 

var_tb %>% count(SAMPLE, GENE, sort = TRUE) %>% head()

# Maximum value of column DP

max(var_tb$DP)
# Minimum value of column DP

min(var_tb$DP)
# Mean value of column DP

mean(var_tb$DP)

# Compute a LOG2 transformation on the DP values

var_tb_log <- var_tb %>% mutate(DP_log2 = log2(DP))

# View the table columns with the DP_log2 new column appended at the end

head(var_tb_log)

select(var_tb_log, SAMPLE, REF, ALT, DP, DP_log2) %>% head()

# Show the maximum value of DP for each sample

var_tb %>% group_by(SAMPLE) %>% summarize(max(DP))

# Show the minimum value of DP for each sample

var_tb %>% group_by(SAMPLE) %>% summarize(min(DP))
