################################################################################
#                                                                              #
#   Specialization: Data Science - Foundations using R Specialization          #
#           Course: Getting and Cleaning Data                                  #
#                                                                              #
#           Author: Anderson Hitoshi Uyekita                                   #
#             Date: 2022/05/23                                                 #
#                                                                              #
#   Course Project: Getting and Cleaning Data Course Project (Week 4)          #
#      Deliverable: run_analysis.R                                             #
#                                                                              #
################################################################################

# Loading packages
library(tidyverse)
library(magrittr)

################################ 1. Getting Data ###############################

# 1.1. Creating a folder to store the data downloaded from the internet.
# Checking if the subfolder already exists.
if (!base::dir.exists("data")) {
    
    # Creating a subfolder to store the data.
    base::dir.create(path = "./data")
}

# 1.2. Downloading Data from URL
if(!base::file.exists("./data/DataSet.zip")) {
    utils::download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                         "./data/DataSet.zip")
}

# 1.3. Unzipping the DataSet
if(!base::dir.exists("./data/UCI HAR Dataset")) {
    utils::unzip(zipfile = "./data/DataSet.zip",
                 exdir = "./data",
                 list = FALSE,
                 overwrite = TRUE)
}

###################### 2. Loading Training & Testing Data ######################

# 2.1 Importing Train X (Attention here! X_train uses X capital instead of x)
x_train <- utils::read.table(file = "./data/UCI HAR Dataset/train/X_train.txt",
                             header = FALSE)

# 2.2. Importing Train Y
y_train <- utils::read.table("./data/UCI HAR Dataset/train/y_train.txt",
                             header = FALSE)

# 2.3. Importing Train Subject
subject_train <- utils::read.table("./data/UCI HAR Dataset/train/subject_train.txt",
                                   header = FALSE)

# 2.4 Importing Test X (Attention here! X_train uses X capital instead of x)
x_test <- utils::read.table("./data/UCI HAR Dataset/test/X_test.txt",
                            header = FALSE)

# 2.5. Importing Test Y
y_test <- utils::read.table("./data/UCI HAR Dataset/test/y_test.txt",
                            header = FALSE) 

# 2.6. Importing Test Subject
subject_test <- utils::read.table("./data/UCI HAR Dataset/test/subject_test.txt",
                                  header = FALSE)

# 2.7. Importing Features Names
features <- utils::read.table(file = "./data/UCI HAR Dataset/features.txt",
                              sep = "",
                              stringsAsFactors = FALSE,
                              header = FALSE)

# 2.8. Importing Activities Names
activity_labels <- utils::read.table("./data/UCI HAR Dataset/activity_labels.txt",
                              header = FALSE)

###################### 3. Cleaning & Manipulation Data #########################

### Manipulation

# 3.1. Merging Test and Train
# Merging the X training and X testings datasets to create one data set.
x <- as_tibble(base::rbind(x_train, x_test))

# 3.2 Merging the Y training and testing observations.
y <- rbind(y_train, y_test)

# 3.3. Merging the subjects training and testing files.
subjects <- rbind(subject_train, subject_test)

# 3.4. Naming the columns with the features$V2 info
base::colnames(x) <- features$V2

### Cleaning

# 3.5. Selecting only columns with mean() or std() values from x_train and x_test.
x_mean_std <- x %>%
    select(contains(c("mean()","std()")))


# 3.6. Adding Column Subject and Activity
#
# The df_tidy is the final dataset with all data cleaning and manipulation.
#
df_tidy <- x_mean_std %>%
    
    # Adding new columns.
    mutate("subject" = subjects[["V1"]],   # ATTENTION!!
           "activity" = y[["V1"]]) %>%     # It is necessary to add a vector as new column.
                                           # This is the reason to use double [["V1"]]
    # Reordering the columns sequence.
    select(subject, activity, everything()) %>%
    
    # Converting the activity column into FACTORS
    mutate(activity = factor(x = activity,                 # Converting levels 1 to 6 into
                             levels = activity_labels$V1,  # descriptive variables as given
                             labels = activity_labels$V2)) # in activity_labels.txt 

########################## 4. Backup the Tidy Dataset ##########################

# 4.1. Checking if the subfolder already exists.
if (!base::dir.exists("export")) {
    
    # Creating a subfolder to store the data.
    base::dir.create(path = "./export")
}

# 4.2. Saving First Data
write.table(df_tidy, "./export/df_tidy_before_step5.txt")

######################## 5. Calculating the mean  ##############################

# 5.1. Calculating the mean of observations based on groups of subject and activity.
df_tidy_mean <- df_tidy %>%
    
    # Grouping the dataset in subject and activity.
    group_by(subject, activity) %>%
    
    # Calculating the mean for all columns.
    summarise_all(mean, na.rm = TRUE) %>%
    
    # Renaming the columnus to have a prefix of "mean".
    rename_at(vars(-subject,-activity),~paste0(., "_mean"))

######################## 6. Exporting Data  ##############################

# 6.1. Exporting the Dataset after Step 5.
write.table(df_tidy_mean, "./export/df_tidy_mean.txt")