erq_test_data_t <- erq_test_data_t %>%
  separate(Variables_erq, c('cr_es', 'Q_number'), '_')

#arrange data by variables and separate variable names into 2 columns
erq_test_data_t <- erq_test_data_t %>%
  arrange(Variables_erq)


#use this df to create aggregate scores for each record_id
erq_mean <- aggregate(cbind(test_1, test_2, test_3) ~ record_id, data = erq_test_data_t, FUN = mean)