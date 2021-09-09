eclean <- function(eraw_df){
  # remove unnecessary column for form status
  ewide <- select(eraw_df, -erq_complete)
  # restructure df to change from wide to long format
  elong <- ewide %>%
    gather(variables, response, cr_1:cr_10, factor_key = TRUE)
  #separate variables column into cr_es and Q_number
  etotal <- elong %>%
    separate(variables, c('cr_es', 'Q_number'), '_')
  etotal$Q_number <- as.numeric(etotal$Q_number) # change Q_number column to numeric
  # sort by record_id and question number
  etotal_clean <- etotal %>%
    arrange(record_id, Q_number)
}

emean <- function(etotal_clean) {
  etotal_mean_raw <- aggregate(cbind(response) ~ record_id + cr_es, data = etotal_clean, FUN = mean)
  etotal_mean <- etotal_mean_raw %>%
    spread(cr_es, response)
}
  