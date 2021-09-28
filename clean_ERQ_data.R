# Clean ERQ data
# 9.28.21 SP

# load required packages
library(tidyverse)
library(here)

# load source functions
source(here::here('src', 'ERQ_functions.R'))

# set hard-coded variables

# load data
erq_raw <- read_csv(here::here('data', 'ERQ_data.csv'))

# clean and reformat raw data frame
erq_clean <- eclean(erq_raw)

# calculate mean scores for cognitive restructuring 
# and emotional suppression
erq_mean <- emean(erq_clean)