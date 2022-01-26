#Ex 61e2e110369e7f0d08196c26
#Do not use additional R packages when solving this exercise.
#a)
#assume that titanic.csv is in the current working directory
#load the titanic dataset into a variable called titanic
#do not put setwd() in your codes

#Complete implementation...
titanic <- read.csv('titanic.csv')


#b)
#obtain the number of records in the dataset 
numRecords <-length(titanic$PassengerId)


#c)
#filter the dataset (using the dataframe indexing operator) to obtain 
#a dataframe with only female passengers
femalePassengers <-titanic[titanic$Sex == 'female',]


#d)
#what is the ratio of female passenger who survived over the total number
#of female passengers?
question_d <- function(){
  #Complete implementation...
  ratio <-length(which(femalePassengers$Survived == 1))/length(femalePassengers$Survived)

  return (ratio)
}
