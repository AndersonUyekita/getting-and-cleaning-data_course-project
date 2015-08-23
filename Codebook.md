# Codebook

## Description of functionality of run_analysis.R

1. Set the root to Documents;
2. Load the Library plyr;
3. Load the Library httr to access the internet;
3. Check the file is already downloaded;
4. The script will download the file hosted in `https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip`;
5. Unzip the file downloaded as "DataSet.zip" into the folder "UCI HAR Dataset";
6. Initializing to import `x_train`, `x_test`, `y_train` and  `y_test`,  in separately tables;
7. Merging all tables together to build the database