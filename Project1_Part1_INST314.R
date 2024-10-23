install.packages("tidyverse")
library(tidyverse)
library(ggplot2)

PJ1<-read.csv("cancer_in_dogs.csv")

#Filter
Dogs_treatment<-filter(PJ1, order=="2,4-D")
Dogs_control<-filter(PJ1, order=="no 2,4-D")

#Sum
Sum_treatment<-sum(Dogs_treatment$response=="cancer")

Sum_control<-sum(Dogs_control$response=="cancer")
print(Sum_control)
print(Sum_treatment)

#N for each treatment group

N_treatment<-nrow(Dogs_treatment)
N_control<- nrow(Dogs_control)

print(N_treatment)
print(N_control)

# Binomial test
binom.test((Sum_treatment), N_treatment,p=Sum_control/N_control, alternative ="greater")
