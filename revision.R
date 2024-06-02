#Q1i
library(dplyr)
v1=c(1,2,3,4,5)
#ii
for (v1 in 1:5)print(v1)

#Q2
#i
min(v1)
#ii
max(v1)
#iii
mean(v1)
#iv
sum(v1)
#v
length(v1)

#Q3
m<-matrix(1:12, nrow=3, ncol=4)
m

#Q4
#i
row(m)
#ii
sum(m)
#iii
colSums(m)
#iv
m<-sample(1:12,1)
m
#v


#Q5
mylist<-m,v1
mylist

#Q6
