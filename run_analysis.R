## Script for Getting & Cleaning Data Class Project

## From the instructions, a successful script:
##   1.) Merges the training and the test sets to create one data set.
##   2.) Extracts only the measurements on the mean and standard deviation for each measurement. 
##   3.) Uses descriptive activity names to name the activities in the data set
##   4.) Appropriately labels the data set with descriptive variable names. 
##   5.) Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## This function processes the raw data and exports the result to two csv files in the working directory

run_analysis <- function () {
        ## Download the data and unzip it
        if (!file.exists("UCI HAR Dataset/")) {
                download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
                                      "source.zip", method="curl")
                unzip("source.zip")
        }
        
        ## Read the relevant data into R and assign appropriate column names
        features <- read.table("UCI HAR Dataset/features.txt")
        activity <- read.table("UCI HAR Dataset/activity_labels.txt",col.names=c("activityID","activityName"))
        train.x <- read.table("UCI HAR Dataset/train/X_train.txt",col.names=features$V2)
        train.y <- read.table("UCI HAR Dataset/train/y_train.txt",col.names=c("activityID"))
        train.subject <- read.table("UCI HAR Dataset/train/subject_train.txt",col.names=c("subject"))
        test.x <- read.table("UCI HAR Dataset/test/X_test.txt",col.names=features$V2)
        test.y <- read.table("UCI HAR Dataset/test/y_test.txt",col.names=c("activityID"))
        test.subject <- read.table("UCI HAR Dataset/test/subject_test.txt",col.names=c("subject")) 
        
        ## Merge the columns of the two datasets
        train.all <- cbind(train.subject,train.y,train.x)
        test.all <- cbind(test.subject,test.y,test.x)
        
        ## Clean up
        rm(train.subject,train.y,train.x,test.subject,test.y,test.x)
        
        ## Merge the rows of the two datasets
        data.all <- rbind(train.all,test.all) 
        
        ## Convert the activities to a factor
        data.all$activityID <- factor(data.all$activityID,activity$activityID,activity$activityName)
        colnames(data.all)[2] <- "activity"
        
        ## Clean up
        rm(activity,features,test.all,train.all)
        
        ## Only keep the mean and std measurements 
        data.all <- data.all[c(1,2,grep("*\\.mean\\.\\.*|*\\.std*",names(data.all)))]
                
        ## Remove extra periods from the variable names
        colnames(data.all) <- gsub("\\.+","\\.",colnames(data.all))
        
        ## Create dataset of averages
        data.means <- aggregate(. ~ subject + activity, data = data.all, mean)

        ## Export datasets to csv
        write.csv(data.means, "means.csv")
        write.csv(data.all, "observations.csv")
       
        ## Tell us it's done
        print("Processing Complete")
}


