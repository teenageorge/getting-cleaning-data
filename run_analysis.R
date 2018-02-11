
library(dplyr)
## Set the working directory
setwd("C:/Coursera/course3/project/UCIHARDataset")

## Read the features
##E.g. tBodyAcc-mean()-X
features <- read.table("features.txt")

##Read the activity file
activities <- read.table("activity_labels.txt")

## Read the training data
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/Y_train.txt")
sub_train <- read.table("train/subject_train.txt")

## Read the test data
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/Y_test.txt")
sub_test <- read.table("test/subject_test.txt")

## Step 1: Merges the training and the test sets to create one data set.
x_set <- rbind(x_test, x_train)
y_set <- rbind(y_test, y_train)
sub_set <- rbind(sub_test, sub_train)

## Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
## 66 columns
mean_std_headers <- grep("-(mean|std)\\(\\)", features[, 2])

x_set <- x_set[, mean_std_headers]
names(x_set) <- features[mean_std_headers, 2]

## Step 3: Uses descriptive activity names to name the activities in the data set
y_set[, 1] <- activities[y_set[,1], 2]
activity <- activities[y_set[,1], 2]

## Step 4: Appropriately labels the data set with descriptive variable names.
names(y_set) <- "activity"
subject <- sub_set[, 1]
names(sub_set) <- "subject"
pretty_set <- cbind(x_set, y_set, sub_set)
print(pretty_set)

## Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
sec_set <- ddply(pretty_set, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(sec_set, "tidy.txt", row.names = F)
