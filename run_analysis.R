# prerequisite: the Samsung data is in the working directory
# script merges training and test sets
# test variables end with _test, train variables end with _train

# prepare data
colnames(X_test) <- features$V2
colnames(X_train) <- features$V2


# add activity labels
for(idx in 1:nrow(y_test)){
    y_test[idx, 2] <- activity_labels[which(activity_labels$V1 == y_test$V1[idx]), 2]
}
for(idx in 1:nrow(y_train)){
    y_train[idx, 2] <- activity_labels[which(activity_labels$V1 == y_train$V1[idx]), 2]
}

# add person ID
ID <- 1
change <- which(diff(y_test$V1) == 3)
change <- append(1, change)
for(idx in 1:(length(change)-1)){
y_test[change[idx]:change[idx+1], 3] <- ID
ID <- ID + 1
}




# export data
result <- write.table( ,row.names = F)