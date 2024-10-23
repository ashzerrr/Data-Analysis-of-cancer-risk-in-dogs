library(tidyverse)
library(Hmisc)
#Load Data
Grades_Por<-read.csv("student_por (1).csv")
Grades_Math<-read.csv("student_math.csv")


#remove missing rows
Grades_Por0<-na.omit(Grades_Por)
Grades_Math0<-na.omit(Grades_Math)

# Check for normality

# Q-Q Plots
qqnorm(Grades_Por0$G3)
qqline(Grades_Por0$G3)
qqnorm(Grades_Math0$G3)
qqline(Grades_Math0$G3)

# Shapiro test
shapiro.test(Grades_Por0$G3)

shapiro.test(Grades_Math0$G3)

# Box Plots

boxplot(Grades_Por0$G3, Grades_Math0$G3, names=c("Mathematics","Portuguase"))

# wilcoxon Signed- Rank sum Test
wilcox.test(Grades_Math0$G2, Grades_Math0$G1, paired=FALSE)

# Part 2

# Check for Normality

#Q-Q Plots
qqnorm(Grades_Math0$G1)
qqline(Grades_Math0$G1)

qqnorm(Grades_Math0$G2)
qqline(Grades_Math0$G2)

# Shapiro test
shapiro.test(Grades_Math0$G1)
shapiro.test(Grades_Math0$G2)

# Box Plots

boxplot(Grades_Math0$G1, Grades_Math0$G2, names=c("G1_Grades","G2_Grades"))

# wilcoxon signed-rank test
wilcox.test(Grades_Math0$G2, Grades_Math0$G1, paired = TRUE)
