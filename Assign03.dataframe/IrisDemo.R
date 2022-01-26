#use the $ operator and the column name

#(case sensitive)

iris$Sepal.Length #5.1 4.9 4.7 4.6 5.0 ...

class(iris$Sepal.Length) #numeric


#alternatively

#this notation is useful for cases where the column

#name contain spaces

iris[["Sepal.Length"]] #5.1 4.9 4.7 4.6 5.0 ...

