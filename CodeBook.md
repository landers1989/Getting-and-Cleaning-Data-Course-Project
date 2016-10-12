#Code Book

#Original Data

The original data for this project : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Tidy Data Set Description for activity_data_project.txt

###activity : the activity performed by the participant
Below are the 6 types of activity:

Walking
Walking_Upstairs
Walking_Downstairs
Sitting 
Standing
Laying

###Participant : the volunteer subject who performed the activity 
There are 30 participants numbered 1 - 30

###Features :The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

The tidy dataset only includes features for mean and standard deviation values.
mean(): Mean value
std(): Standard deviation

Below is a list of the variables (feature columns) included in the tidy dataset.

[4] "tBodyAcc-mean()-Y"                    "tBodyAcc-mean()-Z"                    "tGravityAcc-mean()-X"                
[7] "tGravityAcc-mean()-Y"                 "tGravityAcc-mean()-Z"                 "tBodyAccJerk-mean()-X"               
[10] "tBodyAccJerk-mean()-Y"                "tBodyAccJerk-mean()-Z"                "tBodyGyro-mean()-X"                  
[13] "tBodyGyro-mean()-Y"                   "tBodyGyro-mean()-Z"                   "tBodyGyroJerk-mean()-X"              
[16] "tBodyGyroJerk-mean()-Y"               "tBodyGyroJerk-mean()-Z"               "tBodyAccMag-mean()"                  
[19] "tGravityAccMag-mean()"                "tBodyAccJerkMag-mean()"               "tBodyGyroMag-mean()"                 
[22] "tBodyGyroJerkMag-mean()"              "fBodyAcc-mean()-X"                    "fBodyAcc-mean()-Y"                   
[25] "fBodyAcc-mean()-Z"                    "fBodyAcc-meanFreq()-X"                "fBodyAcc-meanFreq()-Y"               
[28] "fBodyAcc-meanFreq()-Z"                "fBodyAccJerk-mean()-X"                "fBodyAccJerk-mean()-Y"               
[31] "fBodyAccJerk-mean()-Z"                "fBodyAccJerk-meanFreq()-X"            "fBodyAccJerk-meanFreq()-Y"           
[34] "fBodyAccJerk-meanFreq()-Z"            "fBodyGyro-mean()-X"                   "fBodyGyro-mean()-Y"                  
[37] "fBodyGyro-mean()-Z"                   "fBodyGyro-meanFreq()-X"               "fBodyGyro-meanFreq()-Y"              
[40] "fBodyGyro-meanFreq()-Z"               "fBodyAccMag-mean()"                   "fBodyAccMag-meanFreq()"              
[43] "fBodyBodyAccJerkMag-mean()"           "fBodyBodyAccJerkMag-meanFreq()"       "fBodyBodyGyroMag-mean()"             
[46] "fBodyBodyGyroMag-meanFreq()"          "fBodyBodyGyroJerkMag-mean()"          "fBodyBodyGyroJerkMag-meanFreq()"     
[49] "angle(tBodyAccMean,gravity)"          "angle(tBodyAccJerkMean),gravityMean)" "angle(tBodyGyroMean,gravityMean)"    
[52] "angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)"                 "angle(Y,gravityMean)"                
[55] "angle(Z,gravityMean)"                 "tBodyAcc-std()-X"                     "tBodyAcc-std()-Y"                    
[58] "tBodyAcc-std()-Z"                     "tGravityAcc-std()-X"                  "tGravityAcc-std()-Y"                 
[61] "tGravityAcc-std()-Z"                  "tBodyAccJerk-std()-X"                 "tBodyAccJerk-std()-Y"                
[64] "tBodyAccJerk-std()-Z"                 "tBodyGyro-std()-X"                    "tBodyGyro-std()-Y"                   
[67] "tBodyGyro-std()-Z"                    "tBodyGyroJerk-std()-X"                "tBodyGyroJerk-std()-Y"               
[70] "tBodyGyroJerk-std()-Z"                "tBodyAccMag-std()"                    "tGravityAccMag-std()"                
[73] "tBodyAccJerkMag-std()"                "tBodyGyroMag-std()"                   "tBodyGyroJerkMag-std()"              
[76] "fBodyAcc-std()-X"                     "fBodyAcc-std()-Y"                     "fBodyAcc-std()-Z"                    
[79] "fBodyAccJerk-std()-X"                 "fBodyAccJerk-std()-Y"                 "fBodyAccJerk-std()-Z"                
[82] "fBodyGyro-std()-X"                    "fBodyGyro-std()-Y"                    "fBodyGyro-std()-Z"                   
[85] "fBodyAccMag-std()"                    "fBodyBodyAccJerkMag-std()"            "fBodyBodyGyroMag-std()"              
[88] "fBodyBodyGyroJerkMag-std()"          

##Analysis
The tidy data set displays the average of each variable for each activity and each participant. 

Observations: 180 (30 participants X 6 activites)


