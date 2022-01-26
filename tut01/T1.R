#Ex 61e2e110369e7f0d08196c2b
#c) 
#Assume that the dataset (College.csv) is found in the current
#working directory (i.e. do not setwd())
#Load in the dataset into a variable named `college`

#Complete implementation...
college <- read.csv('college.csv') 



#d)
#Use the `head()` function to read the first 3 rows of `college`
#and assign to a variable named `first_three_college`

#Complete implementation...
first_three_college <- head(college, n=3L)



#e)
#Retrieve the vector of the university names and assign to a variable
#named `college_names`

#Complete implementation...
college_names <-college[,'X']


#should show:
# [1] "Abilene Christian University"
# [2] "Adelphi University"
# [3] "Adrian College"
#...
print(college_names)


#f)
#Obtain the vector of the column names of the `college` dataframe and
#assign to a variable named `df_column_names`

#Complete implementation...
df_column_names <-colnames(college)


#this should give you the college names also
print(df_column_names)


#g)
#Obtain the vector of the row names of the `college` dataframe and
#assign to a variable named `df_row_names`

#Complete implementation...
df_row_names <-rownames(college)


#should show:
#"1"   "2"   "3"   "4" ...
print(df_row_names)


#h)
#For the purpose of autograder grading, we will not overwrite to `college`
#instead, let's create a new variable `college1`
college1 <- college

#Now, replace the row names of the `college1` with `college_names` and delete
#the column containing the university name from `college1`

#Complete implementation...
rownames(college1) <- college_names
college1$X <- NULL

#college1 should have 18 columns instead of 19 columns


#i part 1)
#Obtain the total number of applications received and assign to a variable 
#named `total_num_appl_received`

#Complete implementation...
total_num_appl_received <-sum(college1$Apps,na.rm = TRUE)



#i part 2)
#Obtain the average number of applications received and assign to a variable 
#named `average_num_appl_received`

#Complete implementation...
average_num_appl_received <-mean(college1$Apps,na.rm = TRUE)



#j)
#Obtain the vector of universities with more than 5000 applications and 
#assign to a variable named `uni_with_more_than_5000_appl`

#Complete implementation...
uni_with_more_than_5000_appl <- college[which(college$Apps > 5000),c(which(colnames(college) == 'X'),which(colnames(college) == 'Apps'))]



#k part 1)
#Calculate the average graduation rate for universities that received more
#than 5000 applications and assign to a variable named 
#`avg_gradrate_with_more_than_5000_appl`

#Complete implementation...
avg_gradrate_with_more_than_5000_appl <- college[which(college$Apps > 5000),c(which(colnames(college) == 'X'),which(colnames(college) == 'Apps'),which(colnames(college) == 'Grad.Rate'))]



#k part 2)
#Calculate the average graduation rate for universities that did not 
#received more than 5000 applications and assign to a variable named 
#`avg_gradrate_with_not_more_than_5000_appl`

#Complete implementation...
avg_gradrate_with_not_more_than_5000_appl <-mean(avg_gradrate_with_more_than_5000_appl$Grad.Rate)



#l part 1)
#Obtain the university name with the highest number of full-time undergrads
#and assign to a variable name `uni_with_highest_full_time_undergrad`

#Complete implementation...
uni_with_highest_full_time_undergrad <-college[which.max(college$F.Undergrad),c(which(colnames(college) == 'X'),which(colnames(college) == 'F.Undergrad'))]


#l part 2)
#Obtain the university name with the lowest number of full-time undergrads
#and assign to a variable name `uni_with_lowest_full_time_undergrad`

#Complete implementation...
uni_with_lowest_full_time_undergrad <-college[which.min(college$F.Undergrad),c(which(colnames(college) == 'X'),which(colnames(college) == 'F.Undergrad'))]

