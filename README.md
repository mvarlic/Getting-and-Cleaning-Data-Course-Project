# 1. Merges the training and the test sets to create one data set.

# 1.1 Donwload file

setInternet2(TRUE)
archivo <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(archivo,destfile="./project_data.zip") 
dataZip<-"project_data.zip"

# 1.2 Load data test from zip

testX<-read.table(unz(dataZip,"UCI HAR Dataset/test/X_test.txt"), header = FALSE, colClasses="numeric")
testY<-read.table(unz(dataZip,"UCI HAR Dataset/test/y_test.txt"), header = FALSE, colClasses="integer")
testSubject<-read.table(unz(dataZip,"UCI HAR Dataset/test/subject_test.txt"), header = FALSE, colClasses="integer")

# 1.3 Load data train from zip

trainX<-read.table(unz(dataZip,"UCI HAR Dataset/train/X_train.txt"), header = FALSE, colClasses="numeric")
trainY<-read.table(unz(dataZip,"UCI HAR Dataset/train/y_train.txt"), header = FALSE, colClasses="integer")
trainSubject<-read.table(unz(dataZip,"UCI HAR Dataset/train/subject_train.txt"), header = FALSE, colClasses="integer")

# 1.4 Merge test and train

dataDT <- rbind (trainX, testX)
labelDT <- rbind (trainY, testY)
subjectDT <- rbind (trainSubject, testSubject)

# 1.5 Read features and merge with data

features <-read.table(unz(dataZip,"UCI HAR Dataset/features.txt"), sep = " ")
featureNames <- as.character(features[,2])
names(subjectDT) <- c("Subject")
names(labelDT) <- c("Activity")
names(dataDT) <- featureNames
dataTotal <- cbind(dataDT, subjectDT, labelDT)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

# 2.1 selected only colunm contain "mean()" and "std()", conserve "Subject" and "Activity"
meanStdDataDT <- dataTotal[, grep("mean\\()|std\\()|Subject|Activity", names(dataTotal))]


# 3. Uses descriptive activity names to name the activities in the data set

# 3.1 replace activity codes
activityLabels <- read.table(unz(dataZip,"UCI HAR Dataset/activity_labels.txt"), header = FALSE, stringsAsFactors = FALSE)
meanStdDataDT$Activity <- factor(meanStdDataDT$Activity, levels = activityLabels[,1], labels = activityLabels[,2])


#4.Appropriately labels the data set with descriptive activity names.

# 3.1 replace codes and remove "_","()"

names(meanStdDataDT) <- gsub("^f", "Frequency", names(meanStdDataDT))
names(meanStdDataDT) <- gsub("^t", "Time", names(meanStdDataDT))
names(meanStdDataDT) <- gsub("Acc", "Acceleration", names(meanStdDataDT))
names(meanStdDataDT) <- gsub("Gyro", "Gyroscope", names(meanStdDataDT))
names(meanStdDataDT) <- gsub("mean", "Mean", names(meanStdDataDT))
names(meanStdDataDT) <- gsub("std", "Std", names(meanStdDataDT))
names(meanStdDataDT) <- gsub("-", "", names(meanStdDataDT))
names(meanStdDataDT) <- gsub("\\()", "", names(meanStdDataDT))


#5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# 5.1 melt the data, using the variables for Mean and Std
library(reshape)
onlyMeanStd <- grep ("Mean|Std", names (meanStdDataDT), value = TRUE)
moltenData <- melt(meanStdDataDT, id.vars = c("Subject", "Activity"), measure.vars = onlyMeanStd)
tidyData <- cast(moltenData, Subject + Activity ~ variable, mean)

# 5.2 write CSV
write.csv(tidyData, file = "tidyData.csv", row.names = FALSE)





