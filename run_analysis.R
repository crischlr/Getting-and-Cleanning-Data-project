##############################################################################
#
#   This script is for getting and cleaning a data set containing information 
#   about a study on wearable computing.
# 
#   The dataset represent data collected from the accelerometers from the 
#   Samsung Galaxy S smartphone.
#
#   THIS SCRIPT CONTAINS THE FOLLOWING STEPS :
#   ----------------------------------------
#
#   1.- Merge the training and the test sets to create one data set.
#
#   2.- Extract the measurements on the mean and standard deviation for each 
#       measurement.
#
#   3.- Use descriptive activity names to name the activities in the data set.
#
#   4.- Appropriately labels the data set with descriptive variable names.
#
#   5 - From the data set in step 4, creates a second, independent tidy data 
#       set with the average of each variable for each activity and each subject.
#
##############################################################################

closeAllConnections()
rm(list=ls())

##############################################################################
##  1.- Merge the training and the test sets to create one data set.
##############################################################################

## Download the data set and unzip the contents

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileWear <- file.path("./", "fileWear.zip")
download.file (fileURL, fileWear, mode = "wb")

if (file.exists(fileWear)) {
  unzip (fileWear, exdir=".")
}

## Merge test set files 
datatest <- read.table("./UCI HAR Dataset/test/X_test.txt")
datatestAct <- read.table("./UCI HAR Dataset/test/y_test.txt")
datatestSub <- read.table("./UCI HAR Dataset/test/subject_test.txt")

datatest <- cbind(datatestAct, datatestSub, datatest)


## Merge training set files
datatrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
datatrainAct <- read.table("./UCI HAR Dataset/train/y_train.txt")
datatrainSub <- read.table("./UCI HAR Dataset/train/subject_train.txt")

datatrain <- cbind(datatrainAct, datatrainSub, datatrain)


## Merge training and test files and check n. of rows
datatotal <- rbind(datatest, datatrain)
nrow(datatest) + nrow(datatrain) == nrow(datatotal)


##############################################################################
##  2.- Extract the measurements on the mean and standard deviation for each 
##      measurement.
##############################################################################

## Read feature descriptions in order to label each column for easy
## filter of mean and standard deviation related columns.

features <- read.table("./UCI HAR Dataset/features.txt")
names(datatotal) <- c("activity", "subject", as.character(features[,2]))
                      
desc <- names(datatotal)

meansd <- grep ("mean|std", desc, value = TRUE)
dataMeanSd <- datatotal[,c("activity", "subject", meansd)]



##############################################################################
##  3.- Use descriptive activity names to name the activities in the data set. 
##############################################################################

## Read activity names and merge with dataset

activity <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Merge the table data_mean_sd with the activity table
dataMeanSd <- merge(activity, dataMeanSd, by.x="V1", by.y="activity")
dataMeanSd <- dataMeanSd [,-1]



##############################################################################
##   4.- Appropriately labels the data set with descriptive variable names. 
##############################################################################

## Data table with mean and standard deviation for each measure is already 
## labelled from previous steps. Variable names fixed to avoid following
## characters: "-" "()" ","

names(dataMeanSd) <- gsub("[-(),]", "", names(dataMeanSd))
names(dataMeanSd) <- sub("V2", "activity", names(dataMeanSd))



##############################################################################
##  5 - From the data set in step 4, creates a second, independent tidy data 
##      set with the average of each variable for each activity and each subject. 
##############################################################################

library(reshape2)

## Convert Subject in factor (activity is already a factor variable)

dataMeanSd$subject <- as.factor(dataMeanSd$subject)


## Group by Subject and Activity and calculate mean

tidyData <- melt(dataMeanSd, id = c("subject", "activity"))
tidyData <- dcast(tidyData, subject + activity ~ variable, mean)


write.table(tidyData, "tidyData.txt", row.names = FALSE, quote = FALSE)
