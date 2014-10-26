The original dataset used for this data can be downloaded here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The dataset created by the script run_analysis.R consists of 180 observations of 68 variables. There are measurements during 6 activities (Walking, Walking upstairs, Walking downstairs, Sitting, Standing, Laying) for 30 participants, who provided either training or test data. 

Several changes were made from the original dataset. Training and test data were merged, subject IDs were added, descriptive variable names were added, activity labels were added, mean and standard deviation measurements were extracted, and summary means of the measurements were taken for each participant and activity. The final dataset created by the script, "tidydata.txt", consists only of subject IDs, activity labels, and summary means of the mean and standard deviation measurements for each subject and activity.

Below are detailed descriptions of the 68 variables in the final dataset, "tidydata.txt"

ID: Provides the participant ID and ranges from 1-30
Activity: Describes the activity that was being performed by the participant at the time of the measurements (Walking, Walking upstairs, Walking downstairs, Sitting, Standing, Laying) 

The remaining variables provide averages of measurements (which were means or standard deviations of measurements in the original dataset) for each activity and each subject. Please see "features_info.txt" accompanying the original dataset (see link above) for a description of how these measurements were captured. 

tBodyAcc-mean()-X 
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tBodyAccJerk-mean()-X	
tBodyAccJerk-mean()-Y	
tBodyAccJerk-mean()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y	
tBodyGyro-mean()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z	
tBodyAccMag-mean()
tGravityAccMag-mean()
tBodyAccJerkMag-mean()	
tBodyGyroMag-mean()	
tBodyGyroJerkMag-mean()
fBodyAcc-mean()-X	
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z	
fBodyAccJerk-mean()-X	
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z	
fBodyGyro-mean()-X	
fBodyGyro-mean()-Y	
fBodyGyro-mean()-Z
fBodyAccMag-mean()	
fBodyBodyAccJerkMag-mean()
fBodyBodyGyroMag-mean()
fBodyBodyGyroJerkMag-mean()
tBodyAcc-std()-X	
tBodyAcc-std()-Y	
tBodyAcc-std()-Z	
tGravityAcc-std()-X
tGravityAcc-std()-Y	
tGravityAcc-std()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z	
tBodyGyro-std()-X	
tBodyGyro-std()-Y	
tBodyGyro-std()-Z	
tBodyGyroJerk-std()-X	
tBodyGyroJerk-std()-Y	
tBodyGyroJerk-std()-Z	
tBodyAccMag-std()
tGravityAccMag-std()
tBodyAccJerkMag-std()	
tBodyGyroMag-std()	
tBodyGyroJerkMag-std()
fBodyAcc-std()-X
fBodyAcc-std()-Y	
fBodyAcc-std()-Z	
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y	
fBodyAccJerk-std()-Z
fBodyGyro-std()-X	
fBodyGyro-std()-Y	
fBodyGyro-std()-Z	
fBodyAccMag-std()	
fBodyBodyAccJerkMag-std()	
fBodyBodyGyroMag-std()	
fBodyBodyGyroJerkMag-std()