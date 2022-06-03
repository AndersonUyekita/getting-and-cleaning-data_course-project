`Course Project` Getting and Cleaning Data
================

-   👨🏻‍💻 Author: Anderson H Uyekita
-   📚 Specialization: <a
    href="https://www.coursera.org/specializations/data-science-foundations-r"
    target="_blank" rel="noopener">Data Science: Foundations using R
    Specialization</a>
-   📖 Course:
    <a href="https://www.coursera.org/learn/data-cleaning" target="_blank"
    rel="noopener">Getting and Cleaning Data</a>
    -   🧑‍🏫 Instructor: Jeffrey Leek
    -   📅 Date: 2022/05/23

------------------------------------------------------------------------

## Codebook

### Description of functionality of `run_analysis.R` script

1. Create the "data" folder to host files downloaded from the internet;
2. Load the Library tidyverse;
3. Load the Library magrittr to use the pipe (`%>%`);
4. Check the file is already downloaded;
5. Download data from `https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip`;
6. Unzip the file downloaded as "DataSet.zip" into the folder "data";
7. Initializing to import `x_train`, `x_test`, `y_train` and  `y_test`,  in separately tables;
8. Merging all tables together to build the "raw database";
9. Creating a selection vector to subsetting the raw data;
10. Subsetting the raw database with only `mean` and `std`;
11. Importing the Activities;
12. Changing ID to descriptive activity names;
13. Saving the subset data called database_mean_std using `write.table()` as df_tidy_before_step5.txt (stored in the export folder);
14. Sorting the database_mean_std With the average of each variable for each activity and each subject;
15. Saving the subset data called tidy_database using `write.table()` as df_tidy_mean.txt (saved in the export folder);


## Content of  Output and Input
 Here will be described some aspects of output and inputs. 

### Raw Data without any modifications

#### X_train
Measurement's in train;
Resume:
* Rows: 7.352;
* Columns: 561.

#### X_teste
Measurement's in test;
Resume:
* Rows: 2.947;
* Columns: 561.

#### y_train
This is the Activity ID of each row of X_train;
Resume:
* Rows: 7.352;
* Columns: 1.

#### y_test
This is the Activity ID of each row of X_test;
Resume:
* Rows: 2.947;
* Columns: 1.

#### Activity
This table describe each ID used in y_test and y_train;
Resume:
* Rows: 6;
* Columns: 2.

Situations IDs:
* WALKING (ID=1)
* WALKING_UPSTAIRS (ID=2)
* WALKING_DOWNSTAIRS (ID=3)
* SITTING (ID=4)
* STANDING (ID=5)
* LAYING (ID=6)

#### Subject Train
The Subject ID choosed to compound the train group;
Resume:
* Rows: 7.352;
* Columns: 1.

#### Subject Test
The Subject ID choosed to compound the train test;
Resume:
* Rows: 2.947;
* Columns: 1.

#### Feature
Resume:
* Rows: 561;
* Columns: 2.

Feature Level:
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tBodyAcc-mad()-X
* tBodyAcc-mad()-Y
* tBodyAcc-mad()-Z
* tBodyAcc-max()-X
* tBodyAcc-max()-Y
* tBodyAcc-max()-Z
* tBodyAcc-min()-X
* tBodyAcc-min()-Y
* tBodyAcc-min()-Z
* tBodyAcc-sma()
* tBodyAcc-energy()-X
* tBodyAcc-energy()-Y
* tBodyAcc-energy()-Z
* tBodyAcc-iqr()-X
* tBodyAcc-iqr()-Y
* tBodyAcc-iqr()-Z
* tBodyAcc-entropy()-X
* tBodyAcc-entropy()-Y
* tBodyAcc-entropy()-Z
* tBodyAcc-arCoeff()-X,1
* tBodyAcc-arCoeff()-X,2
* tBodyAcc-arCoeff()-X,3
* tBodyAcc-arCoeff()-X,4
* tBodyAcc-arCoeff()-Y,1
* tBodyAcc-arCoeff()-Y,2
* tBodyAcc-arCoeff()-Y,3
* tBodyAcc-arCoeff()-Y,4
* tBodyAcc-arCoeff()-Z,1
* tBodyAcc-arCoeff()-Z,2
* tBodyAcc-arCoeff()-Z,3
* tBodyAcc-arCoeff()-Z,4
* tBodyAcc-correlation()-X,Y
* tBodyAcc-correlation()-X,Z
* tBodyAcc-correlation()-Y,Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tGravityAcc-mad()-X
* tGravityAcc-mad()-Y
* tGravityAcc-mad()-Z
* tGravityAcc-max()-X
* tGravityAcc-max()-Y
* tGravityAcc-max()-Z
* tGravityAcc-min()-X
* tGravityAcc-min()-Y
* tGravityAcc-min()-Z
* tGravityAcc-sma()
* tGravityAcc-energy()-X
* tGravityAcc-energy()-Y
* tGravityAcc-energy()-Z
* tGravityAcc-iqr()-X
* tGravityAcc-iqr()-Y
* tGravityAcc-iqr()-Z
* tGravityAcc-entropy()-X
* tGravityAcc-entropy()-Y
* tGravityAcc-entropy()-Z
* tGravityAcc-arCoeff()-X,1
* tGravityAcc-arCoeff()-X,2
* tGravityAcc-arCoeff()-X,3
* tGravityAcc-arCoeff()-X,4
* tGravityAcc-arCoeff()-Y,1
* tGravityAcc-arCoeff()-Y,2
* tGravityAcc-arCoeff()-Y,3
* tGravityAcc-arCoeff()-Y,4
* tGravityAcc-arCoeff()-Z,1
* tGravityAcc-arCoeff()-Z,2
* tGravityAcc-arCoeff()-Z,3
* tGravityAcc-arCoeff()-Z,4
* tGravityAcc-correlation()-X,Y
* tGravityAcc-correlation()-X,Z
* tGravityAcc-correlation()-Y,Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyAccJerk-mad()-X
* tBodyAccJerk-mad()-Y
* tBodyAccJerk-mad()-Z
* tBodyAccJerk-max()-X
* tBodyAccJerk-max()-Y
* tBodyAccJerk-max()-Z
* tBodyAccJerk-min()-X
* tBodyAccJerk-min()-Y
* tBodyAccJerk-min()-Z
* tBodyAccJerk-sma()
* tBodyAccJerk-energy()-X
* tBodyAccJerk-energy()-Y
* tBodyAccJerk-energy()-Z
* tBodyAccJerk-iqr()-X
* tBodyAccJerk-iqr()-Y
* tBodyAccJerk-iqr()-Z
* tBodyAccJerk-entropy()-X
* tBodyAccJerk-entropy()-Y
* tBodyAccJerk-entropy()-Z
* tBodyAccJerk-arCoeff()-X,1
* tBodyAccJerk-arCoeff()-X,2
* tBodyAccJerk-arCoeff()-X,3
* tBodyAccJerk-arCoeff()-X,4
* tBodyAccJerk-arCoeff()-Y,1
* tBodyAccJerk-arCoeff()-Y,2
* tBodyAccJerk-arCoeff()-Y,3
* tBodyAccJerk-arCoeff()-Y,4
* tBodyAccJerk-arCoeff()-Z,1
* tBodyAccJerk-arCoeff()-Z,2
* tBodyAccJerk-arCoeff()-Z,3
* tBodyAccJerk-arCoeff()-Z,4
* tBodyAccJerk-correlation()-X,Y
* tBodyAccJerk-correlation()-X,Z
* tBodyAccJerk-correlation()-Y,Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyro-mad()-X
* tBodyGyro-mad()-Y
* tBodyGyro-mad()-Z
* tBodyGyro-max()-X
* tBodyGyro-max()-Y
* tBodyGyro-max()-Z
* tBodyGyro-min()-X
* tBodyGyro-min()-Y
* tBodyGyro-min()-Z
* tBodyGyro-sma()
* tBodyGyro-energy()-X
* tBodyGyro-energy()-Y
* tBodyGyro-energy()-Z
* tBodyGyro-iqr()-X
* tBodyGyro-iqr()-Y
* tBodyGyro-iqr()-Z
* tBodyGyro-entropy()-X
* tBodyGyro-entropy()-Y
* tBodyGyro-entropy()-Z
* tBodyGyro-arCoeff()-X,1
* tBodyGyro-arCoeff()-X,2
* tBodyGyro-arCoeff()-X,3
* tBodyGyro-arCoeff()-X,4
* tBodyGyro-arCoeff()-Y,1
* tBodyGyro-arCoeff()-Y,2
* tBodyGyro-arCoeff()-Y,3
* tBodyGyro-arCoeff()-Y,4
* tBodyGyro-arCoeff()-Z,1
* tBodyGyro-arCoeff()-Z,2
* tBodyGyro-arCoeff()-Z,3
* tBodyGyro-arCoeff()-Z,4
* tBodyGyro-correlation()-X,Y
* tBodyGyro-correlation()-X,Z
* tBodyGyro-correlation()-Y,Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyGyroJerk-mad()-X
* tBodyGyroJerk-mad()-Y
* tBodyGyroJerk-mad()-Z
* tBodyGyroJerk-max()-X
* tBodyGyroJerk-max()-Y
* tBodyGyroJerk-max()-Z
* tBodyGyroJerk-min()-X
* tBodyGyroJerk-min()-Y
* tBodyGyroJerk-min()-Z
* tBodyGyroJerk-sma()
* tBodyGyroJerk-energy()-X
* tBodyGyroJerk-energy()-Y
* tBodyGyroJerk-energy()-Z
* tBodyGyroJerk-iqr()-X
* tBodyGyroJerk-iqr()-Y
* tBodyGyroJerk-iqr()-Z
* tBodyGyroJerk-entropy()-X
* tBodyGyroJerk-entropy()-Y
* tBodyGyroJerk-entropy()-Z
* tBodyGyroJerk-arCoeff()-X,1
* tBodyGyroJerk-arCoeff()-X,2
* tBodyGyroJerk-arCoeff()-X,3
* tBodyGyroJerk-arCoeff()-X,4
* tBodyGyroJerk-arCoeff()-Y,1
* tBodyGyroJerk-arCoeff()-Y,2
* tBodyGyroJerk-arCoeff()-Y,3
* tBodyGyroJerk-arCoeff()-Y,4
* tBodyGyroJerk-arCoeff()-Z,1
* tBodyGyroJerk-arCoeff()-Z,2
* tBodyGyroJerk-arCoeff()-Z,3
* tBodyGyroJerk-arCoeff()-Z,4
* tBodyGyroJerk-correlation()-X,Y
* tBodyGyroJerk-correlation()-X,Z
* tBodyGyroJerk-correlation()-Y,Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tBodyAccMag-mad()
* tBodyAccMag-max()
* tBodyAccMag-min()
* tBodyAccMag-sma()
* tBodyAccMag-energy()
* tBodyAccMag-iqr()
* tBodyAccMag-entropy()
* tBodyAccMag-arCoeff()1
* tBodyAccMag-arCoeff()2
* tBodyAccMag-arCoeff()3
* tBodyAccMag-arCoeff()4
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tGravityAccMag-mad()
* tGravityAccMag-max()
* tGravityAccMag-min()
* tGravityAccMag-sma()
* tGravityAccMag-energy()
* tGravityAccMag-iqr()
* tGravityAccMag-entropy()
* tGravityAccMag-arCoeff()1
* tGravityAccMag-arCoeff()2
* tGravityAccMag-arCoeff()3
* tGravityAccMag-arCoeff()4
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyAccJerkMag-mad()
* tBodyAccJerkMag-max()
* tBodyAccJerkMag-min()
* tBodyAccJerkMag-sma()
* tBodyAccJerkMag-energy()
* tBodyAccJerkMag-iqr()
* tBodyAccJerkMag-entropy()
* tBodyAccJerkMag-arCoeff()1
* tBodyAccJerkMag-arCoeff()2
* tBodyAccJerkMag-arCoeff()3
* tBodyAccJerkMag-arCoeff()4
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroMag-mad()
* tBodyGyroMag-max()
* tBodyGyroMag-min()
* tBodyGyroMag-sma()
* tBodyGyroMag-energy()
* tBodyGyroMag-iqr()
* tBodyGyroMag-entropy()
* tBodyGyroMag-arCoeff()1
* tBodyGyroMag-arCoeff()2
* tBodyGyroMag-arCoeff()3
* tBodyGyroMag-arCoeff()4
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* tBodyGyroJerkMag-mad()
* tBodyGyroJerkMag-max()
* tBodyGyroJerkMag-min()
* tBodyGyroJerkMag-sma()
* tBodyGyroJerkMag-energy()
* tBodyGyroJerkMag-iqr()
* tBodyGyroJerkMag-entropy()
* tBodyGyroJerkMag-arCoeff()1
* tBodyGyroJerkMag-arCoeff()2
* tBodyGyroJerkMag-arCoeff()3
* tBodyGyroJerkMag-arCoeff()4
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAcc-mad()-X
* fBodyAcc-mad()-Y
* fBodyAcc-mad()-Z
* fBodyAcc-max()-X
* fBodyAcc-max()-Y
* fBodyAcc-max()-Z
* fBodyAcc-min()-X
* fBodyAcc-min()-Y
* fBodyAcc-min()-Z
* fBodyAcc-sma()
* fBodyAcc-energy()-X
* fBodyAcc-energy()-Y
* fBodyAcc-energy()-Z
* fBodyAcc-iqr()-X
* fBodyAcc-iqr()-Y
* fBodyAcc-iqr()-Z
* fBodyAcc-entropy()-X
* fBodyAcc-entropy()-Y
* fBodyAcc-entropy()-Z
* fBodyAcc-maxInds-X
* fBodyAcc-maxInds-Y
* fBodyAcc-maxInds-Z
* fBodyAcc-meanFreq()-X
* fBodyAcc-meanFreq()-Y
* fBodyAcc-meanFreq()-Z
* fBodyAcc-skewness()-X
* fBodyAcc-kurtosis()-X
* fBodyAcc-skewness()-Y
* fBodyAcc-kurtosis()-Y
* fBodyAcc-skewness()-Z
* fBodyAcc-kurtosis()-Z
* fBodyAcc-bandsEnergy()-1,8
* fBodyAcc-bandsEnergy()-9,16
* fBodyAcc-bandsEnergy()-17,24
* fBodyAcc-bandsEnergy()-25,32
* fBodyAcc-bandsEnergy()-33,40
* fBodyAcc-bandsEnergy()-41,48
* fBodyAcc-bandsEnergy()-49,56
* fBodyAcc-bandsEnergy()-57,64
* fBodyAcc-bandsEnergy()-1,16
* fBodyAcc-bandsEnergy()-17,32
* fBodyAcc-bandsEnergy()-33,48
* fBodyAcc-bandsEnergy()-49,64
* fBodyAcc-bandsEnergy()-1,24
* fBodyAcc-bandsEnergy()-25,48
* fBodyAcc-bandsEnergy()-1,8
* fBodyAcc-bandsEnergy()-9,16
* fBodyAcc-bandsEnergy()-17,24
* fBodyAcc-bandsEnergy()-25,32
* fBodyAcc-bandsEnergy()-33,40
* fBodyAcc-bandsEnergy()-41,48
* fBodyAcc-bandsEnergy()-49,56
* fBodyAcc-bandsEnergy()-57,64
* fBodyAcc-bandsEnergy()-1,16
* fBodyAcc-bandsEnergy()-17,32
* fBodyAcc-bandsEnergy()-33,48
* fBodyAcc-bandsEnergy()-49,64
* fBodyAcc-bandsEnergy()-1,24
* fBodyAcc-bandsEnergy()-25,48
* fBodyAcc-bandsEnergy()-1,8
* fBodyAcc-bandsEnergy()-9,16
* fBodyAcc-bandsEnergy()-17,24
* fBodyAcc-bandsEnergy()-25,32
* fBodyAcc-bandsEnergy()-33,40
* fBodyAcc-bandsEnergy()-41,48
* fBodyAcc-bandsEnergy()-49,56
* fBodyAcc-bandsEnergy()-57,64
* fBodyAcc-bandsEnergy()-1,16
* fBodyAcc-bandsEnergy()-17,32
* fBodyAcc-bandsEnergy()-33,48
* fBodyAcc-bandsEnergy()-49,64
* fBodyAcc-bandsEnergy()-1,24
* fBodyAcc-bandsEnergy()-25,48
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyAccJerk-mad()-X
* fBodyAccJerk-mad()-Y
* fBodyAccJerk-mad()-Z
* fBodyAccJerk-max()-X
* fBodyAccJerk-max()-Y
* fBodyAccJerk-max()-Z
* fBodyAccJerk-min()-X
* fBodyAccJerk-min()-Y
* fBodyAccJerk-min()-Z
* fBodyAccJerk-sma()
* fBodyAccJerk-energy()-X
* fBodyAccJerk-energy()-Y
* fBodyAccJerk-energy()-Z
* fBodyAccJerk-iqr()-X
* fBodyAccJerk-iqr()-Y
* fBodyAccJerk-iqr()-Z
* fBodyAccJerk-entropy()-X
* fBodyAccJerk-entropy()-Y
* fBodyAccJerk-entropy()-Z
* fBodyAccJerk-maxInds-X
* fBodyAccJerk-maxInds-Y
* fBodyAccJerk-maxInds-Z
* fBodyAccJerk-meanFreq()-X
* fBodyAccJerk-meanFreq()-Y
* fBodyAccJerk-meanFreq()-Z
* fBodyAccJerk-skewness()-X
* fBodyAccJerk-kurtosis()-X
* fBodyAccJerk-skewness()-Y
* fBodyAccJerk-kurtosis()-Y
* fBodyAccJerk-skewness()-Z
* fBodyAccJerk-kurtosis()-Z
* fBodyAccJerk-bandsEnergy()-1,8
* fBodyAccJerk-bandsEnergy()-9,16
* fBodyAccJerk-bandsEnergy()-17,24
* fBodyAccJerk-bandsEnergy()-25,32
* fBodyAccJerk-bandsEnergy()-33,40
* fBodyAccJerk-bandsEnergy()-41,48
* fBodyAccJerk-bandsEnergy()-49,56
* fBodyAccJerk-bandsEnergy()-57,64
* fBodyAccJerk-bandsEnergy()-1,16
* fBodyAccJerk-bandsEnergy()-17,32
* fBodyAccJerk-bandsEnergy()-33,48
* fBodyAccJerk-bandsEnergy()-49,64
* fBodyAccJerk-bandsEnergy()-1,24
* fBodyAccJerk-bandsEnergy()-25,48
* fBodyAccJerk-bandsEnergy()-1,8
* fBodyAccJerk-bandsEnergy()-9,16
* fBodyAccJerk-bandsEnergy()-17,24
* fBodyAccJerk-bandsEnergy()-25,32
* fBodyAccJerk-bandsEnergy()-33,40
* fBodyAccJerk-bandsEnergy()-41,48
* fBodyAccJerk-bandsEnergy()-49,56
* fBodyAccJerk-bandsEnergy()-57,64
* fBodyAccJerk-bandsEnergy()-1,16
* fBodyAccJerk-bandsEnergy()-17,32
* fBodyAccJerk-bandsEnergy()-33,48
* fBodyAccJerk-bandsEnergy()-49,64
* fBodyAccJerk-bandsEnergy()-1,24
* fBodyAccJerk-bandsEnergy()-25,48
* fBodyAccJerk-bandsEnergy()-1,8
* fBodyAccJerk-bandsEnergy()-9,16
* fBodyAccJerk-bandsEnergy()-17,24
* fBodyAccJerk-bandsEnergy()-25,32
* fBodyAccJerk-bandsEnergy()-33,40
* fBodyAccJerk-bandsEnergy()-41,48
* fBodyAccJerk-bandsEnergy()-49,56
* fBodyAccJerk-bandsEnergy()-57,64
* fBodyAccJerk-bandsEnergy()-1,16
* fBodyAccJerk-bandsEnergy()-17,32
* fBodyAccJerk-bandsEnergy()-33,48
* fBodyAccJerk-bandsEnergy()-49,64
* fBodyAccJerk-bandsEnergy()-1,24
* fBodyAccJerk-bandsEnergy()-25,48
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyGyro-mad()-X
* fBodyGyro-mad()-Y
* fBodyGyro-mad()-Z
* fBodyGyro-max()-X
* fBodyGyro-max()-Y
* fBodyGyro-max()-Z
* fBodyGyro-min()-X
* fBodyGyro-min()-Y
* fBodyGyro-min()-Z
* fBodyGyro-sma()
* fBodyGyro-energy()-X
* fBodyGyro-energy()-Y
* fBodyGyro-energy()-Z
* fBodyGyro-iqr()-X
* fBodyGyro-iqr()-Y
* fBodyGyro-iqr()-Z
* fBodyGyro-entropy()-X
* fBodyGyro-entropy()-Y
* fBodyGyro-entropy()-Z
* fBodyGyro-maxInds-X
* fBodyGyro-maxInds-Y
* fBodyGyro-maxInds-Z
* fBodyGyro-meanFreq()-X
* fBodyGyro-meanFreq()-Y
* fBodyGyro-meanFreq()-Z
* fBodyGyro-skewness()-X
* fBodyGyro-kurtosis()-X
* fBodyGyro-skewness()-Y
* fBodyGyro-kurtosis()-Y
* fBodyGyro-skewness()-Z
* fBodyGyro-kurtosis()-Z
* fBodyGyro-bandsEnergy()-1,8
* fBodyGyro-bandsEnergy()-9,16
* fBodyGyro-bandsEnergy()-17,24
* fBodyGyro-bandsEnergy()-25,32
* fBodyGyro-bandsEnergy()-33,40
* fBodyGyro-bandsEnergy()-41,48
* fBodyGyro-bandsEnergy()-49,56
* fBodyGyro-bandsEnergy()-57,64
* fBodyGyro-bandsEnergy()-1,16
* fBodyGyro-bandsEnergy()-17,32
* fBodyGyro-bandsEnergy()-33,48
* fBodyGyro-bandsEnergy()-49,64
* fBodyGyro-bandsEnergy()-1,24
* fBodyGyro-bandsEnergy()-25,48
* fBodyGyro-bandsEnergy()-1,8
* fBodyGyro-bandsEnergy()-9,16
* fBodyGyro-bandsEnergy()-17,24
* fBodyGyro-bandsEnergy()-25,32
* fBodyGyro-bandsEnergy()-33,40
* fBodyGyro-bandsEnergy()-41,48
* fBodyGyro-bandsEnergy()-49,56
* fBodyGyro-bandsEnergy()-57,64
* fBodyGyro-bandsEnergy()-1,16
* fBodyGyro-bandsEnergy()-17,32
* fBodyGyro-bandsEnergy()-33,48
* fBodyGyro-bandsEnergy()-49,64
* fBodyGyro-bandsEnergy()-1,24
* fBodyGyro-bandsEnergy()-25,48
* fBodyGyro-bandsEnergy()-1,8
* fBodyGyro-bandsEnergy()-9,16
* fBodyGyro-bandsEnergy()-17,24
* fBodyGyro-bandsEnergy()-25,32
* fBodyGyro-bandsEnergy()-33,40
* fBodyGyro-bandsEnergy()-41,48
* fBodyGyro-bandsEnergy()-49,56
* fBodyGyro-bandsEnergy()-57,64
* fBodyGyro-bandsEnergy()-1,16
* fBodyGyro-bandsEnergy()-17,32
* fBodyGyro-bandsEnergy()-33,48
* fBodyGyro-bandsEnergy()-49,64
* fBodyGyro-bandsEnergy()-1,24
* fBodyGyro-bandsEnergy()-25,48
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyAccMag-mad()
* fBodyAccMag-max()
* fBodyAccMag-min()
* fBodyAccMag-sma()
* fBodyAccMag-energy()
* fBodyAccMag-iqr()
* fBodyAccMag-entropy()
* fBodyAccMag-maxInds
* fBodyAccMag-meanFreq()
* fBodyAccMag-skewness()
* fBodyAccMag-kurtosis()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyAccJerkMag-mad()
* fBodyBodyAccJerkMag-max()
* fBodyBodyAccJerkMag-min()
* fBodyBodyAccJerkMag-sma()
* fBodyBodyAccJerkMag-energy()
* fBodyBodyAccJerkMag-iqr()
* fBodyBodyAccJerkMag-entropy()
* fBodyBodyAccJerkMag-maxInds
* fBodyBodyAccJerkMag-meanFreq()
* fBodyBodyAccJerkMag-skewness()
* fBodyBodyAccJerkMag-kurtosis()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroMag-mad()
* fBodyBodyGyroMag-max()
* fBodyBodyGyroMag-min()
* fBodyBodyGyroMag-sma()
* fBodyBodyGyroMag-energy()
* fBodyBodyGyroMag-iqr()
* fBodyBodyGyroMag-entropy()
* fBodyBodyGyroMag-maxInds
* fBodyBodyGyroMag-meanFreq()
* fBodyBodyGyroMag-skewness()
* fBodyBodyGyroMag-kurtosis()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()
* fBodyBodyGyroJerkMag-mad()
* fBodyBodyGyroJerkMag-max()
* fBodyBodyGyroJerkMag-min()
* fBodyBodyGyroJerkMag-sma()
* fBodyBodyGyroJerkMag-energy()
* fBodyBodyGyroJerkMag-iqr()
* fBodyBodyGyroJerkMag-entropy()
* fBodyBodyGyroJerkMag-maxInds
* fBodyBodyGyroJerkMag-meanFreq()
* fBodyBodyGyroJerkMag-skewness()
* fBodyBodyGyroJerkMag-kurtosis()
* angle(tBodyAccMean,gravity)
* angle(tBodyAccJerkMean),gravityMean)
* angle(tBodyGyroMean,gravityMean)
* angle(tBodyGyroJerkMean,gravityMean)
* angle(X,gravityMean)
* angle(Y,gravityMean)
* angle(Z,gravityMean)

### Description of `df_tidy_before_step5.txt`

The preliminary tidy dataset.

Resume:
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

### Description of `df_tidy_mean.txt`

The Final tidy dataset.

Resume:
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
