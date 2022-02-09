#Ex 61e2e110369e7f0d08196c39
#Assume that the dataset (College.csv) is found in the current
#working directory
college <- read.csv("College.csv", header = T)

#a)
#Use the `summary()` function to produce a numerical summary
summary(college)


#b)
#1. First obtain another dataframe that consists of 4 columns
#Apps, Accept, Enroll, Grade.Rate (in this order) and assign 
#to a variable named `smaller_college_df`
#Ensure that the column names are Apps, Accept, Enroll, Grade.Rate (in this order)
#Also make sure that `smaller_college_df` is a data.frame
#2. Using the pairs function, produce a scatterplot matrix of `smaller_college_df`

#Complete implementation...
smaller_college_df <-college[c(which(colnames(college) == 'Apps'),which(colnames(college) == 'Accept'),which(colnames(college) == 'Enroll'),which(colnames(college) == 'Grad.Rate'))]


#ensure that this should be data.frame
class(smaller_college_df)

pairs(smaller_college_df)


#c)
#1. We will use "blue" to denote private university and "red" to denote non-private
#university. To do that, first obtain a vector of character (`colors`) containing 
#the value "blue" or "red" matching the university type for that row.
#Hint: you might find it useful to cast a character to factor type
#2. Using colors, generate the same plot as (b) using the same colors from `colors` 

#Complete implementation...
colors <-college$Private
colors <- as.character(colors)
colors[college$Private == "Yes"]<- 'blue'
colors[college$Private == 'No']<- 'red'
colors<- as.factor(colors)

pairs(smaller_college_df, col=colors)


#d)
#Use the plot() function to produce a side-by-side boxplots of Apps vs Private.
#Label your x-axis "Private?", y-axis "Number of Applications", and the title
#"Comparison of number of applications for Private and Public University"
#Hint: you might find it useful to cast a character to factor type

question_d <- function(){
  #Complete implementation...
  plot(as.factor(college$Private), college$Apps, xlab = 'Private?', ylab = 'Number of Applications', main = 'Comparison of number of applications for Private and Public University')

}
question_d()


#e)
#Generate the scatterplot based on Top10perc
#To do that, first obtain a vector of character (`colors_top10perc`) containing 
#following color value:
#<=30 : "red"
#<=50 : "orange"
#<=70 : "yellow"
#>70  : "green"

#Complete implementation...
colors_top10perc <- NA
colors_top10perc[college$Top10perc >  70] <- 'green'
colors_top10perc[college$Top10perc <= 70] <- 'yellow'
colors_top10perc[college$Top10perc <= 50] <- 'orange'
colors_top10perc[college$Top10perc <= 30] <- 'red'


plot(college$Top10perc, col=colors_top10perc)


#f)
#Use the hist() function to generate a histogram of Top10perc

question_f <- function(){
  #Complete implementation...
  hist(college$Top10perc, col=colors_top10perc)
}
question_f()
