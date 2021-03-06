---
title: "README"
date: "20 de febrero de 2017"
output: html_document
---

### DESCRIPTION 

This dataset contains data collected from the accelometers from the Samsung Galaxy S smartphone which have been processed in order to get a tidy dataset.
The data is intended to be used for studies on wearable computing and it is
available at:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

<br><br>

### PROCEDURE TO OBTAIN A TIDY DATASET 

In order to get a tidy dataset from the original one it is needed to run
this script: **run_analysis.R**

The script contains the following steps:

1. Merge the training and the test sets to create one data set.

2. Extract the measurements on the mean and standard deviation for each 
   measurement.

3. Use descriptive activity names to name the activities in the data set.

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data 
   set with the average of each variable for each activity and each subject.

The result is a tidy dataset stored in: **tidyData.txt**

