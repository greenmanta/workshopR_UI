var_tb %>% group_by(SAMPLE) %>% summarise(mean(DP))

var_tb %>% count(SAMPLE, CHROM, sort = TRUE) %>% head(6)

var_tb %>% mutate(DP100 = DP/100) %>% select(SAMPLE,DP,DP100) %>% str() 
