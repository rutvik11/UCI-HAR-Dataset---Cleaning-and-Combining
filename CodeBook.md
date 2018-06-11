## Data Source 

Data + Description can be found here UCI Machine Learning Repository - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data Cleaning and Transformation

Below were the steps involved - 

1. Dataset was first downloaded and unzipped.
2. There are two main folders named Train and Test.
3. Each containing files for features, labels for the subjects and their activities.
4. Our target was to combine all the files from train and test folder in proper manner. 
5. In order to achieve this first we only selected the features having their mean() and std() calculated.
6. Once that was done we combined the features file, labels file and subjects file for each train and test dataset. There was total 30 subjects.
7. After that train and test datset was combined and activity column was mapped to their descriptive variable names.
8. And at last as per our task we calculated the average of each variable for each activity and each subject.

Initially the we had the feature vector set of 561 elements which was trimed down to 66 features as we only selected the means and standard deviation of those measurements.

Below is the list of those filtered feature set.

 [1]"tBodyAcc-mean-X"           "tBodyAcc-mean-Y"           "tBodyAcc-mean-Z"           "tBodyAcc-std-X"           
 [5] "tBodyAcc-std-Y"            "tBodyAcc-std-Z"            "tGravityAcc-mean-X"        "tGravityAcc-mean-Y"       
 [9] "tGravityAcc-mean-Z"        "tGravityAcc-std-X"         "tGravityAcc-std-Y"         "tGravityAcc-std-Z"        
[13] "tBodyAccJerk-mean-X"       "tBodyAccJerk-mean-Y"       "tBodyAccJerk-mean-Z"       "tBodyAccJerk-std-X"       
[17] "tBodyAccJerk-std-Y"        "tBodyAccJerk-std-Z"        "tBodyGyro-mean-X"          "tBodyGyro-mean-Y"         
[21] "tBodyGyro-mean-Z"          "tBodyGyro-std-X"           "tBodyGyro-std-Y"           "tBodyGyro-std-Z"          
[25] "tBodyGyroJerk-mean-X"      "tBodyGyroJerk-mean-Y"      "tBodyGyroJerk-mean-Z"      "tBodyGyroJerk-std-X"      
[29] "tBodyGyroJerk-std-Y"       "tBodyGyroJerk-std-Z"       "tBodyAccMag-mean"          "tBodyAccMag-std"          
[33] "tGravityAccMag-mean"       "tGravityAccMag-std"        "tBodyAccJerkMag-mean"      "tBodyAccJerkMag-std"      
[37] "tBodyGyroMag-mean"         "tBodyGyroMag-std"          "tBodyGyroJerkMag-mean"     "tBodyGyroJerkMag-std"     
[41] "fBodyAcc-mean-X"           "fBodyAcc-mean-Y"           "fBodyAcc-mean-Z"           "fBodyAcc-std-X"           
[45] "fBodyAcc-std-Y"            "fBodyAcc-std-Z"            "fBodyAccJerk-mean-X"       "fBodyAccJerk-mean-Y"      
[49] "fBodyAccJerk-mean-Z"       "fBodyAccJerk-std-X"        "fBodyAccJerk-std-Y"        "fBodyAccJerk-std-Z"       
[53] "fBodyGyro-mean-X"          "fBodyGyro-mean-Y"          "fBodyGyro-mean-Z"          "fBodyGyro-std-X"          
[57] "fBodyGyro-std-Y"           "fBodyGyro-std-Z"           "fBodyAccMag-mean"          "fBodyAccMag-std"          
[61] "fBodyBodyAccJerkMag-mean"  "fBodyBodyAccJerkMag-std"   "fBodyBodyGyroMag-mean"     "fBodyBodyGyroMag-std"     
[65] "fBodyBodyGyroJerkMag-mean" "fBodyBodyGyroJerkMag-std" 

### Link to final transformed dataset 

Link - https://github.com/rutvik11/UCI-HAR-Dataset---Cleaning-and-Combining/blob/master/tidydataset.txt
