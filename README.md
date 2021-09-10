# ERQ_RAnalysis
* Repo contains code to analyze data for the Emotional Regualtion Questionnaire (ERQ) measure exported from REDCap
* ERQ_scratch_pad is what I used to type and test code without cluttering the main notebook I was working on. This can also be ignored.

# Functions
* eclean(*df*)
  * restructures data frame from wide format to long format
  * input: raw data frame imported from CSV (*eraw_df* in functions script)
    * variable names as columns, separate rows for each participant
  * output: data frame with variable names split into separate columns
    * 4 columns: record_id, cr_es, Q_number, and response
      * the cr_es column indicates the type of emotional regulation that the question is asking about (cognitive reappraisal (cr) or expressive suppression (es))
    * each record_id has 10 rows (one for each question)
* emean(*df*)
  * calculates mean emotional regulation scores for each participant
  * input: clean data frame from eclean(*df*)'s output
  * output: data frame with cr and es mean scores (*etotal_mean* in functions script)
    * 3 columns: record_id, cr, and es
    * Side note: I was unable to change column names in function script from cr and es to cr_mean and es_mean
