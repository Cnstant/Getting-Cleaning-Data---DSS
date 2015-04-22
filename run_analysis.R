#setwd('C:/Users/constant/Desktop/dossier/DataScienceSpec/3 - Getting_Cleaning_Data/ProgrammingAssignment2')
#Please set youre working directory

# Loading the useful packages
library(data.table)
library(plyr)
library(dplyr)

#Reading the training data for the features, class and subject values respectively
trainingX <- read.table('./Data/train/X_train.txt')
trainingY <- read.table('./Data/train/y_train.txt')
trainingsubject <- read.table('./Data/train/subject_train.txt')

#Reading the test data for the features, class and subject values respectively
testX <- read.table('./Data/test/X_test.txt')
testY <- read.table('./Data/test/y_test.txt')
testsubject <- read.table('./Data/test/subject_test.txt')

#Concatenate the training values in the same data frame
training <- cbind(trainingsubject, trainingX,trainingY)

#Concatenate the test values in the same data frame
test <- cbind(testsubject,testX,testY)

#Concatenate the training and test values (in that order), in the same data frame
data <- rbind(training, test)

#Get the feature names to name the columns of the data frame
features <- read.table('./Data/features.txt')
names(data) <- c('Subject',as.character(features[,2]),'Activity')

#Substetting the data frame to the mean and sd variables of the data frame (meanFreq excluded)
idx <- (grepl("mean()",names(data), fixed = T)) | (grepl("std()",names(data), fixed = T))
subdata <- data[,c(names(data)[1],names(data)[idx], names(data)[563])]

#Rename the factor levels for the column 'Activity'
subdata[,'Activity'] <- as.factor(subdata[,'Activity'])
activity_label <- read.table('./Data/activity_labels.txt')
activity_label[,2] <- as.character(activity_label[,2])
subdata[,'Activity'] <- mapvalues(subdata[,'Activity'], from = activity_label[,1] , to = activity_label[,2])

#Group the subdata set by the variables 'Subject' and 'Activity'
subdatagrouped <- group_by(subdata, subject, Activity)

#Create the tidy data set and write it to the current working directory under the name 'tidy_data.txt'
tidy_data <- summarise_each(subdatagrouped, funs(mean, sd))
write.table(tidy_data, file = 'tidy_data.txt', row.names = FALSE)