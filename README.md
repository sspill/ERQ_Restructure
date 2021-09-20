# ERQ_Restructure
### ***Note: README file not yet updated for clean_wide branch***
* Repo contains code to restructure data for the Emotional Regulation Questionnaire (ERQ) measure exported from REDCap

## Functions
* eclean(*df*)
  * restructures data frame from wide format to long format
  * input: raw data frame imported from CSV (*eraw_df* in functions script)
    * variable names as columns, separate rows for each participant
  * output: data frame with variable names split into separate columns (*etotal_clean* in functions script)
    * 4 columns: record_id, ER_facet, q_number, and response
      * the ER_facet column indicates the facet of emotional regulation that the statement is asking about (cognitive reappraisal (cr) or expressive suppression (es))
    * each record_id has 10 rows (one for each statement)
* emean(*df*)
  * calculates mean facet scores for each participant
  * input: clean data frame from eclean(*df*)'s output
  * output: data frame with cr and es mean scores (*etotal_mean* in functions script)
    * 3 columns: record_id, cr, and es
    * Side note: I was unable to change column names in function script from cr and es to cr_mean and es_mean
