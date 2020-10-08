Information for Getting_And_Cleaning_Data_Course_Project

this file describes the data set and the steps that were performed to make it 
"tidy"
the variables of the tidy data set are described in the file CodeBook.md

all evaluations are based on the following data
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
in addition to the data there are documents that describe the variables 

1st Step: download the data

2nd Step: load all data into R 
  - use script "load_data.R"
  - make sure to choose the correct working directory

3rd Step: make the data "tidy"
  - use script "run_analysis.R"
  - the following steps are performed:
   1. prepare data: 
       add descriptive names to the individual data frames
       select only measurements on the mean and standard deviation 
       (assumption: only measurements with the strings "mean()" and "std()" are considered)
   2. combine data 
       bind columns with subject information (="ID"), activity and measurements
       for test and training individually
       then bind rows of the two data frames -> all data is now in one data frame
   3. calculate average values of each variable for each activity and each subject
       group by ID and activity -> calculate mean for each measurement
       descriptive column names are added afterwards
   4. export data
       the tidy data set is stored to the file "tidyData.txt"
the result is a text file with the tidy data: 
each subject is described by ID (1:30) and for each subject there are 6 possible
activities -> 30\*6 = 180 rows 
each column corresponds to one measurement (66 in total) 

How to view the data afterwards
tidyData <- read.table("tidyData.txt", header = TRUE) 
View(tidyData)
