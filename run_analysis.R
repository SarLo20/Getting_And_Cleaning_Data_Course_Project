## prerequisite: the Samsung data is in the working directory
## script merges training and test sets
## test variables end with _test, train variables end with _train

library(dplyr)

#######################
## prepare data

# change column names to be descriptive
colnames(subject_test) <- "ID"
colnames(subject_train) <- "ID"
colnames(X_test) <- features$V2
colnames(X_train) <- features$V2

# add activity description to y_test and y_train
for(idx in 1:nrow(y_test)){
    y_test$activity[idx] <- as.character(activity_labels[which(activity_labels == y_test$V1[idx]), 2])
}
for(idx in 1:nrow(y_train)){
    y_train$activity[idx] <- as.character(activity_labels[which(activity_labels == y_train$V1[idx]), 2])
}

# extract only the measurements on the mean and standard deviation for each measurement
# search for patterns "mean()" and "std()" in column names
X_test_mean <- X_test[, grepl("mean()", colnames(X_test), fixed = TRUE)]
X_test_std <- X_test[, grepl("std()", colnames(X_test), fixed = TRUE)]
X_train_mean <- X_train[, grepl("mean()", colnames(X_train), fixed = TRUE)]
X_train_std <- X_train[, grepl("std()", colnames(X_train), fixed = TRUE)]

#######################
## combine data

# combine all information for test and train set
testData <- cbind(subject_test, activity = y_test$activity, X_test_mean, X_test_std)
trainData <- cbind(subject_train, activity = y_train$activity, X_train_mean, X_train_std)

if(!all.equal(colnames(testData), colnames(trainData))){
    print("column names of training and test set are not equal, combining not possible")
}

# combine test and train data
combinedData <- rbind(testData, trainData)

#######################
## calculate average values

combinedDataMean <- aggregate(combinedData[, 3:ncol(combinedData)], list(combinedData$ID, combinedData$activity), mean)

newColNames <- vector(length = ncol(combinedDataMean))
newColNames[1] <- "ID"
newColNames[2] <- "activity"
for(idx in 3:length(colnames(combinedDataMean))){
    newColNames[idx] <- paste(colnames(combinedDataMean[idx]), " - average")
}
colnames(combinedDataMean) <- newColNames

#######################
## export data
write.table(combinedDataMean, file = "tidyData.txt", row.names = F)