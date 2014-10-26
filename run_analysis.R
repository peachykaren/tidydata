#Reading the text files into dataframes: make to downloaded folder is in the working directory 
train<-read.table("UCI machine learning/train/X_train.txt")
test<-read.table("UCI machine learning/test/X_test.txt")
labeltrain<-read.table("UCI machine learning/train/y_train.txt")
labeltest<-read.table("UCI machine learning/test/y_test.txt")
subjecttrain<-read.table("UCI machine learning/train/subject_train.txt")
subjecttest<-read.table("UCI machine learning/test/subject_test.txt")
features<-read.table("UCI machine learning/features.txt")

#labeling dataset with descriptive variable names (features)(step 4a of assignment)
featuresvector<-as.vector(features)
colnames(train)<-features[,2]
colnames(test)<-features[,2]

#binding activity labels to data
labeledtrain<-cbind(labeltrain, train)
labeledtest<-cbind(labeltest, test)

#adding subject IDs
traindata<-cbind(subjecttrain, labeledtrain)
testdata<-cbind(subjecttest, labeledtest)

#labeling dataset with descriptive variable names (ID and Activity)(step 4b of assigment)
names(traindata)[1:2]<-c("ID","Activity")
names(testdata)[1:2]<-c("ID","Activity")

#merging data frames to create one full dataset (step 1 of assignment)
fulldata<-rbind(traindata, testdata)

#using descriptive activity names (step 3 of assignment)
fulldata$Activity[fulldata$Activity==1]<-"Walking"
fulldata$Activity[fulldata$Activity==2]<-"Walking upstairs"
fulldata$Activity[fulldata$Activity==3]<-"Walking downstairs"
fulldata$Activity[fulldata$Activity==4]<-"Sitting"
fulldata$Activity[fulldata$Activity==5]<-"Standing"
fulldata$Activity[fulldata$Activity==6]<-"Lying"

#Extracting only measurements with mean and standard deviation (step 2 of assigment)
means<-grep("mean()", colnames(fulldata))
stds<-grep("std()", colnames(fulldata))
meandata<-fulldata[,means]
stddata<-fulldata[,stds]
Extracteddata<-cbind(fulldata[,1:2], meandata, stddata)

#dropping meanFreq measurements because there are no corresponding standard deviation
meanfreq<-grep("meanFreq", colnames(Extracteddata))
Extracteddata2<-Extracteddata[,-meanfreq]

#Calculating summaries and creating tidy data set dataframe (step 5a of assignment)
library(dplyr)
tidydata<-Extracteddata2%>%
  group_by(ID, Activity)%>%
 summarise_each(funs(mean))

#writing tidy data to text file (step 5b of assignment)
write.table(tidydata, file="tidydata.txt", row.name=FALSE)
