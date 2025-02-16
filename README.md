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

## Sinopsis

This course project aims to acquire data from the internet and build a
cleaned dataset, the so-called tidy dataset. Also, we need to the
registry the data manipulation in the `CodeBook.md`. The project
consists of loading 7 txt files and bringing them together into a single
dataset to be used in further analysis (not covered by this course). In
addition, neither all data on this dataset will be used, so it was
necessary to filter its measurements’ mean and standard deviation.

The Script is divided into 5 parts:

1.  Getting Data: Steps to download the files
2.  Loading Data: Steps to import text files into R objects
3.  Cleaning and Manipulating Data: The Loading Data process has
    imported several single files, so to do further analysis, it is
    necessary to merge those files into a single dataset. In addition,
    as stated by the Project Instruction, the final dataset only need to
    have the means and standard deviations.
4.  Backup Data: The second independent dataset could be accessed by the
    variable `df_tidy`.
5.  Calculating the mean: This is the data manipulation to calculate the
    mean of a grouped variable (Subject and Activity).
6.  Exporting Data: Final step is to export the dataset with grouped
    mean by Subject and Activity.

Finally, you will need to look in the `export` folder to find the
datasets. There you will see `df_tidy_before_step5.txt` and
`df_tidy_mean.txt` files.

-   For any further info about the `run_analysis.r`, please you will
    find it in [CodeBook.md](./CodeBook.md)

------------------------------------------------------------------------

## 1. Step-by-step to reproduce the Project

1.  Copy the `run_analysis.r` script to the root (Documents Folder);
2.  Use de command `source()` to load the `run_analysis.r` script. Like
    this `source("run_analysis.R")`;
3.  The script will be run automatically;
4.  The tidy data could be visualized using the command `view()`. Like
    this `view(df_tidy_mean)`. Also, the tidy data set will be saved at
    the root (Documents).

``` r
# Loading the R script
source(file = "run_analysis.r")

# Viewing the tidy dataset
view(df_tidy_mean)
```

## 2. Review criteria

1.  The submitted data set is tidy.
2.  The Github repo contains the required scripts.
3.  GitHub contains a code book that modifies and updates the available
    codebooks with the data to indicate all the variables and summaries
    calculated, along with units, and any other relevant information.
4.  The README that explains the analysis files is clear and
    understandable.
5.  The work submitted for this project is the work of the student who
    submitted it.

## 3. Project Instructions

The purpose of this project is to demonstrate your ability to collect,
work with, and clean a data set. The goal is to prepare tidy data that
can be used for later analysis. You will be graded by your peers on a
series of yes/no questions related to the project. You will be required
to submit:

1.  a tidy data set as described below
2.  a link to a Github repository with your script for performing the
    analysis, and;
3.  a code book that describes the variables, the data, and any
    transformations or work that you performed to clean up the data
    called `CodeBook.md`.

You should also include a README.md in the repo with your scripts. This
repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is
wearable computing - see for example ~~[this
article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/)~~
. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the
most advanced algorithms to attract new users. The data linked to from
the course website represent data collected from the accelerometers from
the Samsung Galaxy S smartphone. A full description is available at the
site where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the data for the project:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

You should create one R script called run_analysis.R that does the
following.

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation
    for each measurement.
3.  Uses descriptive activity names to name the activities in the data
    set
4.  Appropriately labels the data set with descriptive variable names.
5.  From the data set in step 4, creates a second, independent tidy data
    set with the average of each variable for each activity and each
    subject.

Good luck!
