README.md
======

##Purpose
This is a submission for Project #1 of the Getting & Cleaning Data class offered through Coursera.

From the class website:

> The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

##Data
The sample dataset was sourced from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) available from the UCI Machine Learning Repository.  This dataset includes data on human movement collected from the acceleramators of subject's smartphones.

The actual dataset used in this project is available [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

##R Script
At a high level, the included script `run_analysis.R` includes a function that:

1. Downloads the source data from the web and saves it to the working directory
2. Extracts the source data in the working directory
3. Combines the training and test datasets
4. Eliminates variables that are not a mean or standard deviation measure
5. Exports two CSV files with tidy datasets
  * File 1: `observations.csv` -- includes all observations of each subject doing each activity
  * File 2: `means.csv` -- includes mean value of each variable for each subject and activity
        
*Details of the exported files can be found in the codebook available in this repo.*
