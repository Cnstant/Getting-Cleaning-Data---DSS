# Getting-Cleaning-Data---DSS
# Read me for Programming Assignement 2 -  Exploratory Data Analysis

This Read me is designed to help you work with the different files of this folder.

<<<<<<< HEAD
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
*tidy_data.txt* is produced by *run_analysis.R*. Before running *run_analysis.R*, please make sure your working directory is set to the directory where you copied this folder.
For any question, feel free to contact me : constant.bridon@gmail.com
=======
penser à dire que j'ai vidé un peu les data pour l'upload. Penser à rédiger un codebook et readme

Dire dans le Read me comment lire le file en sortie
data <- read.table(file_path, header = TRUE) #if they used some other way of saving the file than a default write.table, this step will be different
View(data)
>>>>>>> e7b7cf2b41cf300f94880dbb38dd28fd18a3986a
