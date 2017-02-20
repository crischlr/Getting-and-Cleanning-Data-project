---
title: "CODEBOOK"
date: "20 de febrero de 2017"
output: html_document
---

### DESCRIPTION 

This CodeBook is related with a dataset which contains data collected from 
the accelometers from the Samsung Galaxy S smartphone.
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

The tidy dataset is stored in: **tidyData.txt**

<br><br>

### TIDY DATASET - DATA

#### BACKGROUND INFORMATION

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals and stored in the
tidy dataset are: 

* mean(): Mean value
* std(): Standard deviation

<br><br>

#### TIDY DATA SET VARIABLES

These are the variables stored in the tidy dataset:
All variables (except activity and subject) are average quantities for each
measure grouped by activity and subject.

1. activity : Activity performed by the subject wearing a smartphone (Samsung Galaxy S II) on the waist: <br>
      * WALKING
      * WALKING_UPSTAIRS
      * WALKING_DOWNSTAIRS
      * SITTING
      * STANDING
      * LAYING
2. subject: The subject who performed the activity for each window sample (1-30).
3. tBodyAccmeanX
4. tBodyAccmeanY
5. tBodyAccmeanZ
6. tBodyAccstdX
7. tBodyAccstdY
8. tBodyAccstdZ                
9. tGravityAccmeanX             
10. tGravityAccmeanY            
11. tGravityAccmeanZ             
12. tGravityAccstdX             
13. tGravityAccstdY              
14. tGravityAccstdZ             
15. tBodyAccJerkmeanX            
16. tBodyAccJerkmeanY           
17. tBodyAccJerkmeanZ            
18. tBodyAccJerkstdX            
19. tBodyAccJerkstdY             
20. tBodyAccJerkstdZ            
21. tBodyGyromeanX               
22. tBodyGyromeanY              
23. tBodyGyromeanZ               
24. tBodyGyrostdX              
25. tBodyGyrostdY                
26. tBodyGyrostdZ               
27. tBodyGyroJerkmeanX           
28. tBodyGyroJerkmeanY          
29. tBodyGyroJerkmeanZ         
30. tBodyGyroJerkstdX           
31. tBodyGyroJerkstdY            
32. tBodyGyroJerkstdZ           
33. tBodyAccMagmean              
34. tBodyAccMagstd              
35. tGravityAccMagmean           
36. tGravityAccMagstd           
37. tBodyAccJerkMagmean          
38. tBodyAccJerkMagstd          
39. tBodyGyroMagmean             
40. tBodyGyroMagstd             
41. tBodyGyroJerkMagmean         
42. tBodyGyroJerkMagstd        
43. fBodyAccmeanX                
44. fBodyAccmeanY               
45. fBodyAccmeanZ                
46. fBodyAccstdX                
47. fBodyAccstdY               
48. fBodyAccstdZ                
49. fBodyAccmeanFreqX            
50. fBodyAccmeanFreqY           
51. fBodyAccmeanFreqZ            
52. fBodyAccJerkmeanX           
53. fBodyAccJerkmeanY            
54. fBodyAccJerkmeanZ           
55. fBodyAccJerkstdX             
56. fBodyAccJerkstdY            
57. fBodyAccJerkstdZ             
58. fBodyAccJerkmeanFreqX       
59. fBodyAccJerkmeanFreqY        
60. fBodyAccJerkmeanFreqZ       
61. fBodyGyromeanX               
62. fBodyGyromeanY              
63. fBodyGyromeanZ               
64. fBodyGyrostdX               
65. fBodyGyrostdY                
66. fBodyGyrostdZ               
67. fBodyGyromeanFreqX           
68. fBodyGyromeanFreqY          
69. fBodyGyromeanFreqZ           
70. fBodyAccMagmean             
71. fBodyAccMagstd             
72. fBodyAccMagmeanFreq         
73. fBodyBodyAccJerkMagmean      
74. fBodyBodyAccJerkMagstd      
75. fBodyBodyAccJerkMagmeanFreq  
76. fBodyBodyGyroMagmean        
77. fBodyBodyGyroMagstd          
78. fBodyBodyGyroMagmeanFreq    
79. fBodyBodyGyroJerkMagmean     
80. fBodyBodyGyroJerkMagstd     
81. fBodyBodyGyroJerkMagmeanFreq


