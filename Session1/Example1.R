###xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
###xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
###                                                                      xxx
###           R CODE FOR MULTI-OMIC NOR NON-BIOLOGISTS COURSE            xxx
###                CODE WRITTEN BY: ALI HASHEMI GHEINANI                 xxx
###                           VERSION:  0.0.0                            xxx
###           EMAIL: ALI.HASHEMIGHEINANI@CHILDRENS.HARVARD.EDU           xxx
###                          DATE:21 SEPT 2023                           xxx
###                                                                      xxx
###xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

###xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


library(bannerCommenter)

banner("R Code for Omic nor Non-Biologists Course ",
       "Code Written by: Ali Hashemi Gheinani","Version:  0.0.0 ",
       "Email: ali.hashemigheinani@childrens.harvard.edu",
       "Date:21 Sept 2023",
       emph = TRUE,
       bandChar="x",
       numLines =2,
       leftSideHashes=3)


banner("Section #1: ....", emph = FALSE,bandChar="-", numLines =2,leftSideHashes=2)



##****************************************************************

##****************************************************************
##                                                              **
##                       Section #1: ....                       **
##                                                              **
##****************************************************************
##****************************************************************

# 1- work clean : use seperators, hashtags, comments, Have a system

# 2- create a project and save the environment

# 2- work clean



library(readr)
library(tidyverse)
library(stringr)
library(dplyr)

#Import the
metadata<- read_delim("synthetic_bladder_cancer_metadata_students.csv",
                      
                      delim = ","
                      
)# include, skip = 1 if you want to exclude the first line


data_csv <- read.csv(csv_file_path)
print(data_csv)
data_csv


data_txt <- read.table(txt_file_path)
print(data_txt)
data_txt

library(readxl)
data_excel <- read_excel(excel_file_path)
print(data_excel)
data_excel


#Sum 3 plus 3
3+3

#Multiply 5 times 12
5*12

#Substract 3 to 4
4-3

#Divide 47 by 17
47/17


#assign a numeric value to chocolatebar
chocolatebar <- 3
chocolatebar


#Assign to height 1.81
height <- 1.81


#Assign to weight 86
weight <- 86




#assign a character value to anyword
anyword <- "dog"
anyword

#do the same to another variable
dsfsdggs <- "dog"
dsfsdggs

#Logic
3<4
7>11


#Alfabetic order
"Daniel" > "Debbie"
"Tural" > "Debbie"



#combine
c(1,3,8)

#Compute average
mean(c(1,3,8))

#plot a parabola
plot(x=c(1,2,3,4), y=c(1,4,9,16))



#run the following lines

x <- c(1,2,3,4,5,6,7,8,9,10)
y <- c(20, 18, 15, 10, 4, 4, 10, 15, 18, 20)

#Plot x and y

plot(x,y)

plot(x,y, "l")



#plot the sqrt function from 0 to 16
plot(sqrt, 0, 16)

#plot the sin function from -pi to pi
plot(sin, -pi, pi)


#install packages

install.packages("ggplot2")

library(ggplot2)

?ggplot



