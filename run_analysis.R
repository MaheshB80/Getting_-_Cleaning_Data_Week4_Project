#Read downloaded & unziped files (UCI HAR Dataset) to R

library(dplyr)

#1.1 from test directory - test data
x_test <- read.table("C:/Users/Mahesh/Desktop/R Programming/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("C:/Users/Mahesh/Desktop/R Programming/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("C:/Users/Mahesh/Desktop/R Programming/UCI HAR Dataset/test/subject_test.txt")


#1.2 from train directory - train data
x_train <- read.table("C:/Users/Mahesh/Desktop/R Programming/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("C:/Users/Mahesh/Desktop/R Programming/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("C:/Users/Mahesh/Desktop/R Programming/UCI HAR Dataset/train/subject_train.txt")


#check the properties of above variables
str(x_test)
str(y_test)
str(subject_test)
str(x_train)
str(y_train)
str(subject_train)


#1.3 merging train & test sets to create one data set

#Merging Rows
subject <- rbind(subject_train,subject_test)
activity <- rbind(y_train,y_test)
features <- rbind(x_train,x_test)

#Set names
names(subject) <- "subject"
names(activity) <- "activity"

# Read features.txt & set name 
datafeatures <- read.table("C:/Users/Mahesh/Desktop/R Programming/UCI HAR Dataset/features.txt",sep = '',col.names = c("number","activity"))
names(features) <- datafeatures$activity

#Merging Columns
datacom <- cbind(subject, activity)
alldata <- cbind(features, datacom)


#2 Extract only the measurements on the mean and standard deviation for each measurement
selected <- alldata[,grep(pattern = ('mean\\(\\)|std|subject|activity'), names(alldata))]


#3 & 4 Uses descriptive activity names to name the activities in the data set/ Labels data set with descriptive variable names

activity_labels <- read.table("C:/Users/Mahesh/Desktop/R Programming/UCI HAR Dataset/activity_labels.txt", sep = '', col.names = c("number","activity"))

selected$activity <- factor(selected$activity, levels = activity_labels$number, labels = activity_labels$activity)

names(selected) <- gsub("^t","time", names(selected))
names(selected) <- gsub("^f","frequency", names(selected))
names(selected) <- gsub("BodyBody","Body", names(selected))



#creates a second, independent tidy data set with the average of each variable for each activity and each subject
output <- selected %>% arrange(subject, activity) %>% group_by(subject, activity) %>% summarize_all(mean)

write.table(output, file = "tidydata.txt",row.name=FALSE)


