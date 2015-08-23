# Codebook

## Description of functionality of `run_analysis.R` script

1. Set the root to Documents;
2. Load the Library plyr;
3. Load the Library httr to access the internet;
4. Check the file is already downloaded;
5. The script will download the file hosted in `https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip`;
6. Unzip the file downloaded as "DataSet.zip" into the folder "UCI HAR Dataset";
7. Initializing to import `x_train`, `x_test`, `y_train` and  `y_test`,  in separately tables;
8. Merging all tables together to build the "raw database";
9. Creatind a selection vector to subsetting the raw data;
10. Subsetting the raw database with only `mean` and `std`;
11. Importing the Activities;
12. Changing ID to descriptive activity names;
13. Saving the subset data called database_mean_std using `write.table()` as database_1st.txt;
14. Sorting the database_mean_std With the average of each variable for each activity and each subject;
15. Saving the subset data called tidy_database using `write.table()` as tidy_database.txt (saved at the root - Documents);


## Content of  database_1st.txt

### Description of database_1st.txt

* Rows: 10.299;
* Column: 68.

### Variables

* subject
* activity
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()


## Content of tidy_database.txt

### Description of tidy_database.txt

* Rows: 180;
* Column: 68.

### Variables

* subject
* activity
* tBodyAcc-mean()-X_mean
* tBodyAcc-mean()-Y_mean
* tBodyAcc-mean()-Z_mean
* tBodyAcc-std()-X_mean
* tBodyAcc-std()-Y_mean
* tBodyAcc-std()-Z_mean
* tGravityAcc-mean()-X_mean
* tGravityAcc-mean()-Y_mean
* tGravityAcc-mean()-Z_mean
* tGravityAcc-std()-X_mean
* tGravityAcc-std()-Y_mean
* tGravityAcc-std()-Z_mean
* tBodyAccJerk-mean()-X_mean
* tBodyAccJerk-mean()-Y_mean
* tBodyAccJerk-mean()-Z_mean
* tBodyAccJerk-std()-X_mean
* tBodyAccJerk-std()-Y_mean
* tBodyAccJerk-std()-Z_mean
* tBodyGyro-mean()-X_mean
* tBodyGyro-mean()-Y_mean
* tBodyGyro-mean()-Z_mean
* tBodyGyro-std()-X_mean
* tBodyGyro-std()-Y_mean
* tBodyGyro-std()-Z_mean
* tBodyGyroJerk-mean()-X_mean
* tBodyGyroJerk-mean()-Y_mean
* tBodyGyroJerk-mean()-Z_mean
* tBodyGyroJerk-std()-X_mean
* tBodyGyroJerk-std()-Y_mean
* tBodyGyroJerk-std()-Z_mean
* tBodyAccMag-mean()_mean
* tBodyAccMag-std()_mean
* tGravityAccMag-mean()_mean
* tGravityAccMag-std()_mean
* tBodyAccJerkMag-mean()_mean
* tBodyAccJerkMag-std()_mean
* tBodyGyroMag-mean()_mean
* tBodyGyroMag-std()_mean
* tBodyGyroJerkMag-mean()_mean
* tBodyGyroJerkMag-std()_mean
* fBodyAcc-mean()-X_mean
* fBodyAcc-mean()-Y_mean
* fBodyAcc-mean()-Z_mean
* fBodyAcc-std()-X_mean
* fBodyAcc-std()-Y_mean
* fBodyAcc-std()-Z_mean
* fBodyAccJerk-mean()-X_mean
* fBodyAccJerk-mean()-Y_mean
* fBodyAccJerk-mean()-Z_mean
* fBodyAccJerk-std()-X_mean
* fBodyAccJerk-std()-Y_mean
* fBodyAccJerk-std()-Z_mean
* fBodyGyro-mean()-X_mean
* fBodyGyro-mean()-Y_mean
* fBodyGyro-mean()-Z_mean
* fBodyGyro-std()-X_mean
* fBodyGyro-std()-Y_mean
* fBodyGyro-std()-Z_mean
* fBodyAccMag-mean()_mean
* fBodyAccMag-std()_mean
* fBodyBodyAccJerkMag-mean()_mean
* fBodyBodyAccJerkMag-std()_mean
* fBodyBodyGyroMag-mean()_mean
* fBodyBodyGyroMag-std()_mean
* fBodyBodyGyroJerkMag-mean()_mean
* fBodyBodyGyroJerkMag-std()_mean
