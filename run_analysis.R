
## Reading the dataset 
## 1. Read the Activity Text file and label the columns as shown below.
activity_df <- read.delim("~/UCI HAR Dataset/activity_labels.txt", col.names = c("classLabels", "activityName"), sep = " ", header = F)


## 2. Read the Features Text file and lable the columns as shown below.
features_df <- read.delim("~/UCI HAR Dataset/features.txt", col.names = c("indices", "features"), sep = " ", header = F)

### Extracting only the measurements on the mean and standard deviation for each measurement. ###

## Filter out only those features which have mean() and std() as their measurement
req_features <- grep("(mean|std)\\(\\)", features_df$features)

measurements_list <- features_df[req_features, c(2)]
measurements <- gsub('[()]', '', measurements_list)
measurements

## Read the train dataset 
train_df <- read.table("~/UCI HAR Dataset/train/X_train.txt", header = F)
## Select the required feature names
train_df <- train_df[,req_features]
## Give the column names as per the measurements
colnames(train_df) <- measurements

train_activities <- read.table("~/UCI HAR Dataset/train/y_train.txt", header = F, col.names = c("Activities"))

train_subjects <- read.table("~/UCI HAR Dataset/train/subject_train.txt", header = F, col.names = c("Subjects"))

## Bind the datasets to get the final dataset
training_df <- cbind(train_df, train_activities, train_subjects)

## Read the test dataset
test_df <- read.table("~/UCI HAR Dataset/test/X_test.txt", header = F)
## Select the required feature names
test_df <- test_df[,req_features]
## Give the column names as per the measurements
colnames(test_df) <- measurements

test_activities <- read.table("~/UCI HAR Dataset/test/y_test.txt", header = F, col.names = c("Activities"))

test_subjects <- read.table("~/UCI HAR Dataset/test/subject_test.txt", header = F, col.names = c("Subjects"))

## Bind the datasets to get the final dataset
testing_df <- cbind(test_df, test_activities, test_subjects)

### Merging the training and the test sets to create one data set. ###

## Combining Training and Testing Datasets
combined_df <- rbind(training_df, testing_df)

### Using descriptive activity names to name the activities in the data set ###

combined_df$Activities <- factor(combined_df$Activities, levels = activity_df$classLabels, labels = activity_df$activityName)
combined_df$Subjects <- as.factor(combined_df[, c("Subjects")])

### Appropriately label the data set with descriptive variable names. ###

names(combined_df)<-gsub("^t", "time", names(combined_df))
names(combined_df)<-gsub("^f", "frequency", names(combined_df))
names(combined_df)<-gsub("Acc", "Accelerometer", names(combined_df))
names(combined_df)<-gsub("Gyro", "Gyroscope", names(combined_df))
names(combined_df)<-gsub("Mag", "Magnitude", names(combined_df))
names(combined_df)<-gsub("BodyBody", "Body", names(combined_df))

### Create a second, independent tidy data set with the average of each variable for each activity and each subject. ###

final_df <- aggregate(. ~Subjects + Activities, combined_df, mean)

write.table(final_df, file = "tidydataset.txt",row.name=FALSE)
