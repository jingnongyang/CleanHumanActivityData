library(plyr)

## Read the training data set.
subject_train <- read.table("train/subject_train.txt", header=FALSE)
X_train <- read.table("train/X_train.txt", header=FALSE)
Y_train <- read.table("train/y_train.txt", header=FALSE)

## Read the test data set.
subject_test <- read.table("test/subject_test.txt", header=FALSE)
X_test <- read.table("test/X_test.txt", header=FALSE)
Y_test <- read.table("test/y_test.txt", header=FALSE)

## Merge the training and the test data sets by stacking them.
subject_merged <- rbind(subject_train, subject_test)
names(subject_merged) <- "Subject"
X_merged <- rbind(X_train, X_test)
Y_merged <- rbind(Y_train, Y_test)

## Remove train data sets and test data sets from memory. Only merged data sets are needed.
rm(list=c("subject_train", "X_train", "Y_train", "subject_test", "X_test", "Y_test"))

## Read in features description from raw data set.
features_original <- read.table("features.txt", , header=FALSE, colClasses="character")
names(features_original) <- c("Index", "FeatureName")
# Find out column numbers of mean and std.
# Equivalently, in a manual way, 
# feature_subset <- c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427,428,429,503,504,516,517,529,530,542,543)
feature_subset <- integer()
for (i in seq_along(features_original$FeatureName)) {
  if(length(grep("mean()",features_original[i, "FeatureName"],fixed=TRUE))>0) {
    feature_subset = c(feature_subset, i)
  }
  else if(length(grep("std()",features_original[i, "FeatureName"],fixed=TRUE))>0) {
    feature_subset = c(feature_subset, i)
  }
}
  
## Extracts only the measurements on the mean and standard deviation for each measurement.
X_merged_mean_std <- X_merged[, feature_subset]

## Uses descriptive activity names to name the activities in the data set.
activity_labels <- c("Walking", "Walking_Upstairs", "Walking_Downstairs", "Sitting", "Standing", "Laying")
# Append a column with activity labels.
Y_merged <- cbind(Y_merged, activity_labels[unlist(Y_merged)])
# Only keep the 2nd column.
Y_merged[,1] <- NULL
names(Y_merged) <- "Activity"

## Appropriately labels the data set with descriptive variable names.
features_mean_std <- read.table("features_mean_std.txt", header=FALSE, colClasses="character")
features_mean_std <- unlist(features_mean_std)
names(X_merged_mean_std) <- features_mean_std

## Create a tidy data set with the average of each variable for each activity and each subject.
## Prepend a column of subject and a column of activity label in front of data.
Data_full <- cbind(subject_merged, Y_merged)
Data_full <- cbind(Data_full, X_merged_mean_std)
# This requires plyr. Run library(plyr) beforehand.
# numcolwise() runs a summary over all numeric columns.
Tidied_average <- ddply(Data_full, .(Subject, Activity), numcolwise(mean))

write.table(Tidied_average, "Averaged_Activity.txt", row.name=FALSE)

