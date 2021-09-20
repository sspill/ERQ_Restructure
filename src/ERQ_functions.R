# function to clean raw data frame
eclean <- function(eraw_df){
  
  # remove unnecessary column for form status
  ewide <- select(eraw_df, -erq_complete)
  
  # restructure df to change from wide to long format
  elong <- ewide %>%
    gather(variables, response, cr_1:cr_10, factor_key = TRUE)
  
  # separate variables column into ER_facet and q_number
  etotal <- elong %>%
    separate(variables, c('ER_facet', 'q_number'), '_')
  
  # change 'q_number' column from chr to num
  etotal$q_number <- as.numeric(etotal$q_number)
  
  # sort by record_id and question number
  etotal_clean <- etotal %>%
    arrange(record_id, q_number)
}

# function to calculate mean scores for cognitive restructuring 
# and emotional suppression responses
emean <- function(etotal_clean) {
  etotal_mean_raw <- aggregate(
    cbind(response) ~ record_id + ER_facet, 
    data = etotal_clean, 
    FUN = mean
  )
  
  # round mean scores to 2 decimals
  etotal_mean_raw$response <- round(etotal_mean_raw$response, digits = 2)
  
  # convert df to wide format
  etotal_mean <- etotal_mean_raw %>%
    spread(ER_facet, response)
}
  
