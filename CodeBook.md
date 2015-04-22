# Code Book for Programming Assignement 2 -  Exploratory Data Analysis

This Code Book is designed to help you understand three different aspects of this project : what are the variables, what is the data and what are the transformations applied on the original data set that produced the data set of interest.

### Original data set
The original data set is available through the following URL
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### Data set
The data set is in the Data folder. It includes the following files:
- '*README.txt*'
- '*features_info.txt*': Shows information about the variables used on the feature vector.
- '*features.txt*': List of all features. 
- '*activity_labels.txt*': Links the class labels with their activity name.
- '*train*': Training set.
- '*test*': Test set.

The following files are available for the train and test data. Their descriptions are equivalent. 
- '*./subject_(train/test).txt*': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- '*./X_(train/test).txt*': data set. 
- '*./y_(train/test).txt*': data labels, integer values from 1 to 6.

### Feature
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


### Tidy data 
The 134 columns are composed by 'Subject', 'Activity' and the mean and standard deviation for every 66 selected features, as following : (units were not provided)

    "1" "Subject"
    "2" "Activity"
    "3" "tBodyAcc.mean...X_mean"
    "4" "tBodyAcc.mean...Y_mean"
    "5" "tBodyAcc.mean...Z_mean"
    "6" "tBodyAcc.std...X_mean"
    "7" "tBodyAcc.std...Y_mean"
    "8" "tBodyAcc.std...Z_mean"
    "9" "tGravityAcc.mean...X_mean"
    "10" "tGravityAcc.mean...Y_mean"
    "11" "tGravityAcc.mean...Z_mean"
    "12" "tGravityAcc.std...X_mean"
    "13" "tGravityAcc.std...Y_mean"
    "14" "tGravityAcc.std...Z_mean"
    "15" "tBodyAccJerk.mean...X_mean"
    "16" "tBodyAccJerk.mean...Y_mean"
    "17" "tBodyAccJerk.mean...Z_mean"
    "18" "tBodyAccJerk.std...X_mean"
    "19" "tBodyAccJerk.std...Y_mean"
    "20" "tBodyAccJerk.std...Z_mean"
    "21" "tBodyGyro.mean...X_mean"
    "22" "tBodyGyro.mean...Y_mean"
    "23" "tBodyGyro.mean...Z_mean"
    "24" "tBodyGyro.std...X_mean"
    "25" "tBodyGyro.std...Y_mean"
    "26" "tBodyGyro.std...Z_mean"
    "27" "tBodyGyroJerk.mean...X_mean"
    "28" "tBodyGyroJerk.mean...Y_mean"
    "29" "tBodyGyroJerk.mean...Z_mean"
    "30" "tBodyGyroJerk.std...X_mean"
    "31" "tBodyGyroJerk.std...Y_mean"
    "32" "tBodyGyroJerk.std...Z_mean"
    "33" "tBodyAccMag.mean.._mean"
    "34" "tBodyAccMag.std.._mean"
    "35" "tGravityAccMag.mean.._mean"
    "36" "tGravityAccMag.std.._mean"
    "37" "tBodyAccJerkMag.mean.._mean"
    "38" "tBodyAccJerkMag.std.._mean"
    "39" "tBodyGyroMag.mean.._mean"
    "40" "tBodyGyroMag.std.._mean"
    "41" "tBodyGyroJerkMag.mean.._mean"
    "42" "tBodyGyroJerkMag.std.._mean"
    "43" "fBodyAcc.mean...X_mean"
    "44" "fBodyAcc.mean...Y_mean"
    "45" "fBodyAcc.mean...Z_mean"
    "46" "fBodyAcc.std...X_mean"
    "47" "fBodyAcc.std...Y_mean"
    "48" "fBodyAcc.std...Z_mean"
    "49" "fBodyAccJerk.mean...X_mean"
    "50" "fBodyAccJerk.mean...Y_mean"
    "51" "fBodyAccJerk.mean...Z_mean"
    "52" "fBodyAccJerk.std...X_mean"
    "53" "fBodyAccJerk.std...Y_mean"
    "54" "fBodyAccJerk.std...Z_mean"
    "55" "fBodyGyro.mean...X_mean"
    "56" "fBodyGyro.mean...Y_mean"
    "57" "fBodyGyro.mean...Z_mean"
    "58" "fBodyGyro.std...X_mean"
    "59" "fBodyGyro.std...Y_mean"
    "60" "fBodyGyro.std...Z_mean"
    "61" "fBodyAccMag.mean.._mean"
    "62" "fBodyAccMag.std.._mean"
    "63" "fBodyBodyAccJerkMag.mean.._mean"
    "64" "fBodyBodyAccJerkMag.std.._mean"
    "65" "fBodyBodyGyroMag.mean.._mean"
    "66" "fBodyBodyGyroMag.std.._mean"
    "67" "fBodyBodyGyroJerkMag.mean.._mean"
    "68" "fBodyBodyGyroJerkMag.std.._mean"
    "69" "tBodyAcc.mean...X_sd"
    "70" "tBodyAcc.mean...Y_sd"
    "71" "tBodyAcc.mean...Z_sd"
    "72" "tBodyAcc.std...X_sd"
    "73" "tBodyAcc.std...Y_sd"
    "74" "tBodyAcc.std...Z_sd"
    "75" "tGravityAcc.mean...X_sd"
    "76" "tGravityAcc.mean...Y_sd"
    "77" "tGravityAcc.mean...Z_sd"
    "78" "tGravityAcc.std...X_sd"
    "79" "tGravityAcc.std...Y_sd"
    "80" "tGravityAcc.std...Z_sd"
    "81" "tBodyAccJerk.mean...X_sd"
    "82" "tBodyAccJerk.mean...Y_sd"
    "83" "tBodyAccJerk.mean...Z_sd"
    "84" "tBodyAccJerk.std...X_sd"
    "85" "tBodyAccJerk.std...Y_sd"
    "86" "tBodyAccJerk.std...Z_sd"
    "87" "tBodyGyro.mean...X_sd"
    "88" "tBodyGyro.mean...Y_sd"
    "89" "tBodyGyro.mean...Z_sd"
    "90" "tBodyGyro.std...X_sd"
    "91" "tBodyGyro.std...Y_sd"
    "92" "tBodyGyro.std...Z_sd"
    "93" "tBodyGyroJerk.mean...X_sd"
    "94" "tBodyGyroJerk.mean...Y_sd"
    "95" "tBodyGyroJerk.mean...Z_sd"
    "96" "tBodyGyroJerk.std...X_sd"
    "97" "tBodyGyroJerk.std...Y_sd"
    "98" "tBodyGyroJerk.std...Z_sd"
    "99" "tBodyAccMag.mean.._sd"
    "100" "tBodyAccMag.std.._sd"
    "101" "tGravityAccMag.mean.._sd"
    "102" "tGravityAccMag.std.._sd"
    "103" "tBodyAccJerkMag.mean.._sd"
    "104" "tBodyAccJerkMag.std.._sd"
    "105" "tBodyGyroMag.mean.._sd"
    "106" "tBodyGyroMag.std.._sd"
    "107" "tBodyGyroJerkMag.mean.._sd"
    "108" "tBodyGyroJerkMag.std.._sd"
    "109" "fBodyAcc.mean...X_sd"
    "110" "fBodyAcc.mean...Y_sd"
    "111" "fBodyAcc.mean...Z_sd"
    "112" "fBodyAcc.std...X_sd"
    "113" "fBodyAcc.std...Y_sd"
    "114" "fBodyAcc.std...Z_sd"
    "115" "fBodyAccJerk.mean...X_sd"
    "116" "fBodyAccJerk.mean...Y_sd"
    "117" "fBodyAccJerk.mean...Z_sd"
    "118" "fBodyAccJerk.std...X_sd"
    "119" "fBodyAccJerk.std...Y_sd"
    "120" "fBodyAccJerk.std...Z_sd"
    "121" "fBodyGyro.mean...X_sd"
    "122" "fBodyGyro.mean...Y_sd"
    "123" "fBodyGyro.mean...Z_sd"
    "124" "fBodyGyro.std...X_sd"    
    "125" "fBodyGyro.std...Y_sd"
    "126" "fBodyGyro.std...Z_sd"
    "127" "fBodyAccMag.mean.._sd"
    "128" "fBodyAccMag.std.._sd"
    "129" "fBodyBodyAccJerkMag.mean.._sd"
    "130" "fBodyBodyAccJerkMag.std.._sd"
    "131" "fBodyBodyGyroMag.mean.._sd"
    "132" "fBodyBodyGyroMag.std.._sd"
    "133" "fBodyBodyGyroJerkMag.mean.._sd"
    "134" "fBodyBodyGyroJerkMag.std.._sd"


This codebook was written with the enlighting [post of David Hood on Courera](https://class.coursera.org/getdata-013/forum/thread?thread_id=30) 
