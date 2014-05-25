
#1.Merges the training and the test sets to create one data set.

X_test<-read.table("./data/test/X_test.txt")
y_test<-read.table("./data/test/y_test.txt")
names(y_test)<-c("activity_code")
subject_test<-read.table("./data/test/subject_test.txt")
names(subject_test)<-c("subject_code")

test <- cbind(X_test,c(y_test,subject_test)) 

X_train<-read.table("./data/train/X_train.txt")
y_train<-read.table("./data/train/y_train.txt")
names(y_train)<-c("activity_code")
subject_train<-read.table("./data/train/subject_train.txt")
names(subject_train)<-c("subject_code")

train <- cbind(X_train,c(y_train,subject_train)) 

data <- rbind(train,test)


#features<-read.table("./data/features.txt")
#cabecera<-features[,2]
#cabecera<-rbind(cabecera,c("activity_code","subject_code"))


#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
index1 <- with(features, grepl("mean()", V2))
index2 <- with(features, grepl("std()", V2))

head(data[,features[index1,1]])
head(data[,features[index2,1]])

#3.Uses descriptive activity names to name the activities in the data set
activity_labels<-read.table("./data/activity_labels.txt")
names(activity_labels)<-c("activity_code","activity")
data = merge(data,activity_labels,by.x="activity_code",by.y="activity_code",all=TRUE)

#4.Appropriately labels the data set with descriptive activity names. 



#5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject.