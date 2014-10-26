tidydata
========

Getting and Cleaning Data Course Project

"run_analysis.R" tidies the following dataset provided by the UCI Machine Learning Repository: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

First, text files from the downloaded data are read into R as dataframes. The training dataset and the test dataset are each labeled with descriptive variable names, and subject IDs and activity labels are bound to each dataset. These new columns for subject IDs and activity labels are also labeled with descriptive variable names "ID" and "Activity". Next, the training dataset and test dataset are merged. The numbers 1-6 under the variable "Activity" are replaced with descriptive activity names (Walking, Walking upstairs, Walking downstairs, Sitting, Standing, Laying).

Next, only the measurements with means and standard deviations are extracted from the dataset. The "meanFreq" measurements are dropped as there are no corresponding standard deviation measurements for these measures. The resulting dataset consists of 10299 observations of 68 variables. The first variable is the subject ID, the second variable is the Activity, and the remaining variables consist of 33 mean and 33 standard deviation measurements.

Finally, using the package "dplyr", averages of the mean and standard deviation measurements were calculated for each activity and each subject. These means, along with the "ID" and "Activity" variables, are stored in a dataframe called "tidydata" (consisting of 180 observations of 68 variables). The dataframe is then written into a text file named "tidydata.txt"

To view this file in R, please run the following command:

data <- read.table(file_path, header = TRUE) 
View(data)