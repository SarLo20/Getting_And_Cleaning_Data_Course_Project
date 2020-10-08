Information for Getting_And_Cleaning_Data_Course_Project

this file describes the data set and the steps that were performed to make it "tidy" <br />
the variables of the tidy data set are described in the file CodeBook.md <br />

all evaluations are based on the following data <br />
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip <br />
in addition to the data there are documents that describe the variables <br />

1st Step: download the data <br />

2nd Step: load all data into R <br />
  - use script "load_data.R" <br />
  - make sure to choose the correct working directory <br />

3rd Step: make the data "tidy" <br />
  - use script "run_analysis.R" <br />
  - the following steps are performed: <br />
   1. prepare data <br />
       add descriptive names to the individual data frames <br />
       select only measurements on the mean and standard deviation <br />
       (assumption: only measurements with the strings "mean()" and "std()" are considered) <br />
   2. combine data <br />
       bind columns with subject information (="ID"), activity and measurements <br />
       for test and training individually <br />
       then bind rows of the two data frames -> all data is now in one data frame <br />
   3. calculate average values of each variable for each activity and each subject <br />
       group by ID and activity -> calculate mean for each measurement <br />
       descriptive column names are added afterwards <br />
   4. export data <br />
       the tidy data set is stored to the file "tidyData.txt" <br />
       
the result is a text file with the tidy data: <br />
each subject is described by ID (1:30) and for each subject there are 6 possible <br />
activities -> 30\*6 = 180 rows <br />
each column corresponds to one measurement (66 in total) <br />

How to view the data afterwards: <br />
tidyData <- read.table("tidyData.txt", header = TRUE) <br />
View(tidyData) <br />
