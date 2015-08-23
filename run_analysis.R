# Course Project - Week 3 - Coursera
# Getting and Cleaning Data
# Anderson Hitoshi Uyekita


# All manipulation data will be in the root.
setwd("~")
library(plyr)

################################ 0. Gettind Data #####################################

# 0.1. Download Data from Web URL
library(httr) 
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("DataSet.zip"))
{
        download.file(url, "DataSet.zip")
}

# 0.2. Unzip DataSet
if(!file.exists("UCI HAR Dataset")){
        unzip("DataSet.zip", list = FALSE, overwrite = TRUE)
}

################################ 1. Merging Data #####################################

# 1.1 Importing Train X (Attention here! X_train uses X capital instead of x)
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")

# 1.2. Importing Train Y
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

# 1.3. Importing Train Subject
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# 1.4 Importing Test X (Attention here! X_train uses X capital instead of x)
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

# 1.5. Importing Test Y
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt") 

# 1.6. Importing Test Subject
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# 1.7. Importing Features Names
features <- read.table(file="./UCI HAR Dataset/features.txt",sep="",stringsAsFactors=F)

# 1.8. Merging Teste and Train
database <- rbind(x_train, x_test)
col_names_features <- c(features$V2)
names(database) <- c(col_names_features)

################################ 2. Subseting Data #####################################
# 2.1. Vector to select column with only mean and standard deviation
selection_mean_std <- grep("mean\\(\\)|std\\(\\)", features$V2)

# 2.2. Applying the selection vector to the database
database_mean_std <- database[,selection_mean_std]

# 2.3. Adding Column Subject and Activity
database_mean_std <- cbind(rbind(subject_train, subject_test),rbind(y_train, y_test),database_mean_std)
names(database_mean_std)[1] <- c("subject")
names(database_mean_std)[2] <- c("activity")

################# 3. Importing descriptive activity names #######################
# 3.1. Importing Activities Names
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")

################# 4. Changing ID to descriptive activity names #######################
# 4.1. Changing ID for Descripitive Name
database_mean_std$activity <- factor(database_mean_std$activity, levels=activity$V1, labels=activity$V2)

# 4.2. Saving First Data
write.table(database, "database_1st.txt")

#################################### 5. Tidy data set  ###############################
# 5.1. With the average of each variable for each activity and each subject
tidy_database <- ddply(database_mean_std, .(subject, activity), .fun=function(x){ colMeans(x[,-c(1:2)]) })
colnames(tidy_database)[-c(1:2)] <- paste(colnames(tidy_database)[-c(1:2)], "_mean", sep="")

# 5.2. Saving Tidy Data
write.table(tidy_database, "tidy_database.txt", row.name=FALSE)
