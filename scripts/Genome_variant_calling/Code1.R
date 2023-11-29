var <- read.csv("data/29112023/variants_long_table.csv")
head(var)
ncol(var)
str(var)
dim(var)
glimpse(var)

summary(var)

summary(var$SAMPLE)
summary(var$DP)

class(var)
class(var$CHROM)

#VIEW IN SPREADSHEET
View(var)

#check column names
colnames(var)

#select column 1,4,5
var[,c(1,4,5)]
select(var, SAMPLE, REF, ALT)

# Select all columns except the column “CALLER” with selected display
select(var, SAMPLE, REF, ALT) %>% head(3)

# Transform the data frame into a tibble

var_tb <- as_tibble(var)

select(var_tb, SAMPLE, REF, ALT) %>% head(3)

#filtering row
var_tb[var_tb$SAMPLE == "SRR13500958",]

# Select rows with selected display using dplyr functions

filter(var_tb, SAMPLE == "SRR13500958") %>% head(3)

# Select sample type (rows) and variables (columns) with selected display

var_tb %>% filter(SAMPLE == "SRR13500958") %>% select(CHROM, POS, REF, ALT) %>% head(3)

var_tb %>% filter(SAMPLE == "SRR13500958") %>% select(CHROM, POS, REF, ALT, DP)
var_tb %>% filter(SAMPLE == "SRR13500958" & DP>=500) %>% select(CHROM, POS, REF, ALT, DP)
var_tb %>% filter(SAMPLE == "SRR13500958" & DP>=1000) %>% select(CHROM, POS, REF, ALT, DP)

