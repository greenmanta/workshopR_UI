# Link ggplot2 to a specific data frame
ggplot(data = var_tb)

# Link ggplot2 to specific variables using aesthetics
ggplot(data = var_tb,aes(x=SAMPLE, y=DP))

# Points (left-hand plot)
ggplot(data = var_tb, aes(x=SAMPLE, y=DP)) + geom_point()

# Boxplot (right-hand plot)
ggplot(data = var_tb, aes(x=SAMPLE, y=DP)) + geom_boxplot()

# Points (left-hand plot)
ggplot(data = var_tb, aes(x=SAMPLE, y=DP)) + geom_point() + ylim(0,10000)

#Warning message:
  #Removed 8 rows containing missing values (`geom_point()`).

# Boxplot (right-hand plot)
ggplot(data = var_tb, aes(x=SAMPLE, y=DP)) + geom_boxplot() + ylim(0,10000)

#Warning message: Removed 8 rows containing missing values (`geom_point()`

# Points (left-hand plot)
ggplot(data = var_tb, aes(x=SAMPLE, y=DP)) + geom_point() + scale_y_continuous(name="dp", limits=c(0, 10000))

# Boxplot (right-hand plot)
ggplot(data = var_tb, aes(x=SAMPLE, y=DP)) + geom_boxplot() + scale_y_continuous(name="dp", limits=c(0, 10000))

# Points (left-hand plot)
ggplot(data = var_tb, aes(x=SAMPLE, y=DP)) + geom_point() + scale_y_continuous(trans='log10')

ggplot(data = var_tb, aes(x=SAMPLE, y=DP)) + geom_point() + scale_y_log10()

# Boxplot (right-hand plot)
ggplot(data = var_tb, aes(x=SAMPLE, y=DP)) + geom_boxplot() + scale_y_continuous(trans='log10')

ggplot(data = var_tb, aes(x=SAMPLE, y=DP)) + geom_boxplot() + scale_y_log10()



# Colours of shapes
ggplot(data = var_tb, aes(x=SAMPLE, y=DP, colour = SAMPLE)) + geom_boxplot() + ylim(0,10000)

# Colours for filling options
ggplot(data = var_tb, aes(x=SAMPLE, y=DP, fill= SAMPLE)) + geom_boxplot() + ylim(0,10000)

Q1 <- ggplot(data = var_tb, aes(x=DP, y=ALT_DP))
Q1

Q2 <- ggplot(data = var_tb, aes(x=DP, y=ALT_DP)) + geom_point(shape=21,size =5) + scale_fill_brewer(palette="Spectral")
Q2

test <- ggplot(data = var_tb, aes(x=DP, y=ALT_DP)) + 
  geom_point(shape=21,size =5) + 
  scale_fill_brewer(palette="RdBu")
test+labs(title = "DP_per_ALT_DP") + theme(legend.position = "top")  
