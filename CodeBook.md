CodeBook.md
======
## Overview
Two output files are produced by the function `run_analysis()` in `run_analysis.R` and saved to the working directory.

* `observations.csv`
* `means.csv`

Both files have the same data fields, the only differce being that `observations.csv` has a record for each recorded observation of a subject and in `means.csv`, each record represents the mean of all observations for that activity and subject. A complete list of the included fields in included in the "Field Details" section below.  More information about this data can be found at the homepage for the source data --- [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) available from the UCI Machine Learning Repository --- and in the `features_info.txt` file included in the source data zip file.

## Transformations
The training and test datasets provided in the source data were consolidated to a single dataset.  Activity was recoded from an integer to a descriptive factor variable.

For `means.csv` the mean of observations was calculated using the aggregate function `r aggregate(. ~ subject + activity, data = data.all, mean)`

## Field Details
Field Name|Measurement Description|Statistic|Axis
---|---|:---:|:---:
\<blank\>|Record number|N/A|N/A
subject|Subject ID|N/A|N/A
activity|Facotor variable indicating the name of activity subject was performing|N/A|N/A
tBodyAcc.mean.X|Raw Body Acceleration|Mean|X
tBodyAcc.mean.Y|Raw Body Acceleration|Mean|Y
tBodyAcc.mean.Z|Raw Body Acceleration|Mean|Z
tBodyAcc.std.X|Raw Body Acceleration|Std Dev|X
tBodyAcc.std.Y|Raw Body Acceleration|Std Dev|Y
tBodyAcc.std.Z|Raw Body Acceleration|Std Dev|Z
tGravityAcc.mean.X|Raw Gravity Acceleration|Mean|X
tGravityAcc.mean.Y|Raw Gravity Acceleration|Mean|Y
tGravityAcc.mean.Z|Raw Gravity Acceleration|Mean|Z
tGravityAcc.std.X|Raw Gravity Acceleration|Std Dev|X
tGravityAcc.std.Y|Raw Gravity Acceleration|Std Dev|Y
tGravityAcc.std.Z|Raw Gravity Acceleration|Std Dev|Z
tBodyAccJerk.mean.X|Acceleration Jerk Signal|Mean|X
tBodyAccJerk.mean.Y|Acceleration Jerk Signal|Mean|Y
tBodyAccJerk.mean.Z|Acceleration Jerk Signal|Mean|Z
tBodyAccJerk.std.X|Acceleration Jerk Signal|Std Dev|X
tBodyAccJerk.std.Y|Acceleration Jerk Signal|Std Dev|Y
tBodyAccJerk.std.Z|Acceleration Jerk Signal|Std Dev|Z
tBodyGyro.mean.X|Raw Gyroscope|Mean|X
tBodyGyro.mean.Y|Raw Gyroscope|Mean|Y
tBodyGyro.mean.Z|Raw Gyroscope|Mean|Z
tBodyGyro.std.X|Raw Gyroscope|Std Dev|X
tBodyGyro.std.Y|Raw Gyroscope|Std Dev|Y
tBodyGyro.std.Z|Raw Gyroscope|Std Dev|Z
tBodyGyroJerk.mean.X|Gyroscope Jerk Signal|Mean|X
tBodyGyroJerk.mean.Y|Gyroscope Jerk Signal|Mean|Y
tBodyGyroJerk.mean.Z|Gyroscope Jerk Signal|Mean|Z
tBodyGyroJerk.std.X|Gyroscope Jerk Signal|Std Dev|X
tBodyGyroJerk.std.Y|Gyroscope Jerk Signal|Std Dev|Y
tBodyGyroJerk.std.Z|Gyroscope Jerk Signal|Std Dev|Z
tBodyAccMag.mean.|Body Acceleration Magnitude|Mean|N/A
tBodyAccMag.std.|Body Acceleration Magnitude|Std Dev|N/A
tGravityAccMag.mean.|Gravity Acceleration Magnitude|Mean|N/A
tGravityAccMag.std.|Gravity Acceleration Magnitude|Std Dev|N/A
tBodyAccJerkMag.mean.|Body Acceleration Jerk Magnitude|Mean|N/A
tBodyAccJerkMag.std.|Body Acceleration Jerk Magnitude|Std Dev|N/A
tBodyGyroMag.mean.|Gyroscope Magnitude|Mean|N/A
tBodyGyroMag.std.|Gyroscope Magnitude|Std Dev|N/A
tBodyGyroJerkMag.mean.|Gyroscope Jerk Magnitude|Mean|N/A
tBodyGyroJerkMag.std.|Gyroscope Jerk Magnitude|Std Dev|N/A
fBodyAcc.mean.X|Raw Body Acceleration - Fast Fourier Transform (FFT)|Mean|X
fBodyAcc.mean.Y|Raw Body Acceleration - Fast Fourier Transform (FFT)|Mean|Y
fBodyAcc.mean.Z|Raw Body Acceleration - Fast Fourier Transform (FFT)|Mean|Z
fBodyAcc.std.X|Raw Body Acceleration - Fast Fourier Transform (FFT)|Std Dev|X
fBodyAcc.std.Y|Raw Body Acceleration - Fast Fourier Transform (FFT)|Std Dev|Y
fBodyAcc.std.Z|Raw Body Acceleration - Fast Fourier Transform (FFT)|Std Dev|Z
fBodyAccJerk.mean.X|Acceleration Jerk Signal - Fast Fourier Transform (FFT)|Mean|X
fBodyAccJerk.mean.Y|Acceleration Jerk Signal - Fast Fourier Transform (FFT)|Mean|Y
fBodyAccJerk.mean.Z|Acceleration Jerk Signal - Fast Fourier Transform (FFT)|Mean|Z
fBodyAccJerk.std.X|Acceleration Jerk Signal - Fast Fourier Transform (FFT)|Std Dev|X
fBodyAccJerk.std.Y|Acceleration Jerk Signal - Fast Fourier Transform (FFT)|Std Dev|Y
fBodyAccJerk.std.Z|Acceleration Jerk Signal - Fast Fourier Transform (FFT)|Std Dev|Z
fBodyGyro.mean.X|Raw Gyroscope - Fast Fourier Transform (FFT)|Mean|X
fBodyGyro.mean.Y|Raw Gyroscope - Fast Fourier Transform (FFT)|Mean|Y
fBodyGyro.mean.Z|Raw Gyroscope - Fast Fourier Transform (FFT)|Mean|Z
fBodyGyro.std.X|Raw Gyroscope - Fast Fourier Transform (FFT)|Std Dev|X
fBodyGyro.std.Y|Raw Gyroscope - Fast Fourier Transform (FFT)|Std Dev|Y
fBodyGyro.std.Z|Raw Gyroscope - Fast Fourier Transform (FFT)|Std Dev|Z
fBodyAccMag.mean.|Body Acceleration Magnitude - Fast Fourier Transform (FFT)|Mean|N/A
fBodyAccMag.std.|Body Acceleration Magnitude - Fast Fourier Transform (FFT)|Std Dev|N/A
fBodyBodyAccJerkMag.mean.|Body Acceleration Jerk Magnitude - Fast Fourier Transform (FFT)|Mean|N/A
fBodyBodyAccJerkMag.std.|Body Acceleration Jerk Magnitude - Fast Fourier Transform (FFT)|Std Dev|N/A
fBodyBodyGyroMag.mean.|Gyroscope Magnitude - Fast Fourier Transform (FFT)|Mean|N/A
fBodyBodyGyroMag.std.|Gyroscope Magnitude - Fast Fourier Transform (FFT)|Std Dev|N/A
fBodyBodyGyroJerkMag.mean.|Gyroscope Jerk Magnitude - Fast Fourier Transform (FFT)|Mean|N/A
fBodyBodyGyroJerkMag.std.|Gyroscope Jerk Magnitude - Fast Fourier Transform (FFT)|Std Dev|N/A