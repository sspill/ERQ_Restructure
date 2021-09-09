#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('EmotionalRegulationQ_DATA_2021-08-11_1410.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$cr_1)="When I want to feel more positive emotion (such as joy or amusement), I change what Im thinking about."
label(data$es_2)="I keep my emotions to myself."
label(data$cr_3)="When I want to feel less negative emotion (such as sadness or anger), I change what Im thinking about."
label(data$es_4)="When I am feeling positive emotions, I am careful to not express them."
label(data$cr_5)="When Im faced with a stressful situation, I make myself think about it in a way that helps me stay calm."
label(data$es_6)="I control my emotions by not expressing them."
label(data$cr_7)="When I want to feel more positive emotion, I change the way Im thinking about the situation."
label(data$cr_8)="I control my emotions by changing the way I think about the situation Im in."
label(data$es_9)="When I am feeling negative emotions, I make sure to not express them."
label(data$cr_10)="When I want to feel less negative emotion, I change the way Im thinking about the situation."
label(data$erq_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$cr_1.factor = factor(data$cr_1,levels=c("1","2","3","4","5","6","7"))
data$es_2.factor = factor(data$es_2,levels=c("1","2","3","4","5","6","7"))
data$cr_3.factor = factor(data$cr_3,levels=c("1","2","3","4","5","6","7"))
data$es_4.factor = factor(data$es_4,levels=c("1","2","3","4","5","6","7"))
data$cr_5.factor = factor(data$cr_5,levels=c("1","2","3","4","5","6","7"))
data$es_6.factor = factor(data$es_6,levels=c("1","2","3","4","5","6","7"))
data$cr_7.factor = factor(data$cr_7,levels=c("1","2","3","4","5","6","7"))
data$cr_8.factor = factor(data$cr_8,levels=c("1","2","3","4","5","6","7"))
data$es_9.factor = factor(data$es_9,levels=c("1","2","3","4","5","6","7"))
data$cr_10.factor = factor(data$cr_10,levels=c("1","2","3","4","5","6","7"))
data$erq_complete.factor = factor(data$erq_complete,levels=c("0","1","2"))

levels(data$cr_1.factor)=c("strongly disagree1","2","3","neutral4","5","6","strongly agree7")
levels(data$es_2.factor)=c("strongly disagree1","2","3","neutral4","5","6","strongly agree7")
levels(data$cr_3.factor)=c("strongly disagree1","2","3","neutral4","5","6","strongly agree7")
levels(data$es_4.factor)=c("strongly disagree1","2","3","neutral4","5","6","strongly agree7")
levels(data$cr_5.factor)=c("strongly disagree1","2","3","neutral4","5","6","strongly agree7")
levels(data$es_6.factor)=c("strongly disagree1","2","3","neutral4","5","6","strongly agree7")
levels(data$cr_7.factor)=c("strongly disagree1","2","3","neutral4","5","6","strongly agree7")
levels(data$cr_8.factor)=c("strongly disagree1","2","3","neutral4","5","6","strongly agree7")
levels(data$es_9.factor)=c("strongly disagree1","2","3","neutral4","5","6","strongly agree7")
levels(data$cr_10.factor)=c("strongly disagree1","2","3","neutral4","5","6","strongly agree7")
levels(data$erq_complete.factor)=c("Incomplete","Unverified","Complete")
