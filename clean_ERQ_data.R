# Clean ERQ data
# 9.14.21 SP

# load required packages
library(tidyverse)

# load source functions
source('/Users/ssp160230/github_directory/ERQ_Restructure/src/ERQ_functions.R')

# set hard-coded variables 
erq_raw <- read_csv('/Users/ssp160230/github_directory/ERQ_Restructure/data/ERQ_data.csv')

# clean and reformat raw data frame
erq_clean <- eclean(erq_raw)

# calculate mean scores for cognitive restructuring 
# and emotional suppression
erq_mean <- emean(erq_clean)

#write csv for clean df
write.csv(
  erq_clean, 
  "/Users/ssp160230/github_directory/ERQ_Restructure/output/ERQ_clean.csv", 
  row.names = FALSE
)

# write csv for mean scores df
write.csv(
  erq_mean, 
  "/Users/ssp160230/github_directory/ERQ_Restructure/output/ERQ_mean.csv", 
  row.names = FALSE
)