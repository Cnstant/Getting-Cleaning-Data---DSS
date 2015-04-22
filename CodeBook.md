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
In the root folder, the file *tidy_data.txt* is the tidy data set extracted from the original data set.
Here is a list of the different steps to produce it : 
   - Train data set files, i.e *subject_train.txt*, *X_train.txt* and *y_train.txt* are merged together. *Subject* is the first column, *X_train* ranges from column 2 to 562 (561 different features), and *y_train* is the last column. The resulting dataframe contains 7352 observations
   - Test data set files, i.e *subject_test.txt*, *X_test.txt* and *y_test.txt* are merged together. *Subject* is the first column, *X_test* ranges from column 2 to 562 (561 different features), and *y_test* is the last column. The resulting dataframe contains 2947 observations
   - Train and Test data frames are concatenated in this order, creating a data frame of 10299 observations
   - From the *features.txt* file, we extracted the features names and set the column names of the data frame : fisrt 'Subject', then the 561 different feature names and finally 'Activity'
   - In the scope of this programming assignment, we were asked to only take into account the variables consistent with a mean or a standard deviation. We subset the data frame to all the columns whose names contained 'mean()' or 'sd()'. However, columns dealing with 'meanFreq' were left aside. The subset data frame contains then 68 columns : 'Subject', 66 features bearing upon mean and standard deviation and 'Activity', with still 10299 observations
   - In order to make things interpretable, 'Activity' levels were changed from [1,2,3,4,5,6] to [WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING] respectivily, as stated in *activity_labels.txt* file.
   - The resulting data frame, written in *tidy_data.txt* is the mean and the standard deviation of every 66 selected features for each tuple (Subject, Activity)

This codebook was written with the enlighting [post of David Hood on Courera](https://class.coursera.org/getdata-013/forum/thread?thread_id=30) 