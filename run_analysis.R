library(plyr)
library(data.table)
library(dplyr)

##create folder named coursedata in working directory if not already created
##download file and unzip

if(!file.exists("./coursedata")){dir.create("./coursedata")}
fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./coursedata/UCIdata.zip")
unzip(zipfile="./coursedata/UCIdata.zip",exdir="./coursedata")


##read in all tables

x_train <- read.table("./coursedata/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./coursedata/UCI HAR Dataset/train/y_train.txt")
x_test <- read.table("./coursedata/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./coursedata/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./coursedata/UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./coursedata/UCI HAR Dataset/train/subject_train.txt")
featureNames <- read.table("./coursedata/UCI HAR Dataset/features.txt")
activityLabels <- read.table("./coursedata/UCI HAR Dataset/activity_labels.txt")


##assign column names to tables

colnames(x_train) <- featureNames[,2]
colnames(y_train) <-"activityId"
colnames(subject_train) <- "participant"
colnames(x_test) <- featureNames[,2]
colnames(y_test) <- "activityId"
colnames(subject_test) <- "participant"
colnames(activityLabels) <- c('activityId','activity')


##column bind all training data into one combined dataset
##column bind all test data into one combined dataset
##row bind new training and test combined datasets  

train_combined <- cbind(x_train, y_train, subject_train)
test_combined <- cbind(x_test, y_test, subject_test)
Combined <- rbind(train_combined, test_combined)


##search for column names that include "mean" or "std"
## subset only colulmn names including "mean" or "std"

mean_col <- grep("mean",names(Combined),ignore.case=TRUE)
mean_names <- names(Combined)[mean_col]
std_col <- grep("std", names(Combined), ignore.case = TRUE)
std_names <- names(Combined)[std_col]
mean_std <- Combined[,c("participant", "activityId", mean_names, std_names)]


##merge new dataset with activity labels to add descriptive names
new_acivity_names <- merge(activityLabels, mean_std, by = "activityId", all = TRUE)

##melt dataset with new activity names
data_melted <- melt(new_acivity_names, id=c("activityId", "activity", "participant"))

##cast second dataset to get the mean for each participant and each activity
final_mean <- dcast(data_melted, activity + participant ~ variable, mean)

##create txt file with new dataset
write.table(final_mean, "./coursedata/activity_data_project.txt", row.names = FALSE)

##read and view final dataset
activity_dataset <- read.table("./coursedata/activity_data_project.txt", header=TRUE)
View(activity_dataset)

