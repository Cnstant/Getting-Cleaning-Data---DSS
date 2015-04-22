# Getting-Cleaning-Data---DSS
# Read me for Programming Assignement 2 -  Exploratory Data Analysis

This Read me is designed to help you work with the different files of this folder.

### Content
This folder includes :
- *Data* : a folder containing the useful data for this assignment. Nota bene : unlike the original [data folder](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) at the root of this assignment, the folder *Data* does not include *Inertial data*, because they were not useful in the scope of this work
- *CodeBook.md* : describes the data folder and the different operations used to obtain the file *tidy_data.txt*
- *README.md* 
- *run_analysis.R* : the R code that generates *tidy_data.txt*
- *tidy_data.txt* : the tidy data set in txt format. In order to visualize it, please type the following lines in R after setting your working directory to the folder containing *tiny_data.txt* : 


    library(data.table)
    filepath = './tidy_data.txt'
    data <- read.table(file_path, header = TRUE) 
    View(data)
    
### Work
*tidy_data.txt* is produced by *run_analysis.R*. Before running *run_analysis.R*, please make sure your working directory is set to the directory where you copied this folder. To have a complete description of the data, please see CodeBook.md
Here is a list of the different steps to produce it : 
   - Train data set files, i.e *subject_train.txt*, *X_train.txt* and *y_train.txt* are merged together. *Subject* is the first column, *X_train* ranges from column 2 to 562 (561 different features), and *y_train* is the last column. The resulting dataframe contains 7352 observations
   - Test data set files, i.e *subject_test.txt*, *X_test.txt* and *y_test.txt* are merged together. *Subject* is the first column, *X_test* ranges from column 2 to 562 (561 different features), and *y_test* is the last column. The resulting dataframe contains 2947 observations
   - Train and Test data frames are concatenated in this order, creating a data frame of 10299 observations
   - From the *features.txt* file, we extracted the features names and set the column names of the data frame : fisrt 'Subject', then the 561 different feature names and finally 'Activity'
   - In the scope of this programming assignment, we were asked to only take into account the variables consistent with a mean or a standard deviation. We subset the data frame to all the columns whose names contained 'mean()' or 'sd()'. However, columns dealing with 'meanFreq' were left aside. The subset data frame contains then 68 columns : 'Subject', 66 features bearing upon mean and standard deviation and 'Activity', with still 10299 observations
   - In order to make things interpretable, 'Activity' levels were changed from [1,2,3,4,5,6] to [WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING] respectivily, as stated in *activity_labels.txt* file.
   - The resulting data frame, written in *tidy_data.txt* is the mean and the standard deviation of every 66 selected features for each tuple (Subject, Activity). The 66 features are described in CodeBook.md


For any question, feel free to contact me : constant.bridon@gmail.com
