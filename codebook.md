Codebook
--------
--------

This codebook descripes the variables of the dataset "tidyData.csv".
The dataset contains 180 observations of 68 variables.

Subject: each identify an individual that participated in the original study
Activity: the activity the observed individual performed

Feature Variables :
-------------------
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAccelerationXYZ and TimeGyroscopeXYZ. These time domain signals ("time") were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAccelerationXYZ and TimeGyroscopeAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerationJerkXYZ and TimeBodyGyroscopeJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerationMag, TimeGravityAccelerationMag, TimeBodyAccelerationJerkMag, TimeBodyGyroscopeMag, TimeBodyGyroscopeJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAccelerationXYZ, 
FrequencyBodyAccelerationJerk-XYZ, FrequencyBodyGyroscope-XYZ, FrequencyBodyAccelerationJerkMag, FrequencyBodyGyroscopeMag, FrequencyBodyGyroscopeJerkMag. (frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Each of these variables contains the average of each variable for each activity and each subject of the original data. Each variable contains either the mean or the standard deviation of the original variable.

"TimeBodyAccelerationMeanX"                "TimeBodyAccelerationMeanY"                "TimeBodyAccelerationMeanZ"               
"TimeBodyAccelerationStdX"                 "TimeBodyAccelerationStdY"                 "TimeBodyAccelerationStdZ"                
"TimeGravityAccelerationMeanX"             "TimeGravityAccelerationMeanY"             "TimeGravityAccelerationMeanZ"            
"TimeGravityAccelerationStdX"              "TimeGravityAccelerationStdY"              "TimeGravityAccelerationStdZ"             
"TimeBodyAccelerationJerkMeanX"            "TimeBodyAccelerationJerkMeanY"            "TimeBodyAccelerationJerkMeanZ"           
"TimeBodyAccelerationJerkStdX"             "TimeBodyAccelerationJerkStdY"             "TimeBodyAccelerationJerkStdZ"            
"TimeBodyGyroscopeMeanX"                   "TimeBodyGyroscopeMeanY"                   "TimeBodyGyroscopeMeanZ"                  
"TimeBodyGyroscopeStdX"                    "TimeBodyGyroscopeStdY"                    "TimeBodyGyroscopeStdZ"                   
"TimeBodyGyroscopeJerkMeanX"               "TimeBodyGyroscopeJerkMeanY"               "TimeBodyGyroscopeJerkMeanZ"              
"TimeBodyGyroscopeJerkStdX"                "TimeBodyGyroscopeJerkStdY"                "TimeBodyGyroscopeJerkStdZ"               
"TimeBodyAccelerationMagMean"              "TimeBodyAccelerationMagStd"               "TimeGravityAccelerationMagMean"          
"TimeGravityAccelerationMagStd"            "TimeBodyAccelerationJerkMagMean"          "TimeBodyAccelerationJerkMagStd"          
"TimeBodyGyroscopeMagMean"                 "TimeBodyGyroscopeMagStd"                  "TimeBodyGyroscopeJerkMagMean"            
"TimeBodyGyroscopeJerkMagStd"              "FrequencyBodyAccelerationMeanX"           "FrequencyBodyAccelerationMeanY"          
"FrequencyBodyAccelerationMeanZ"           "FrequencyBodyAccelerationStdX"            "FrequencyBodyAccelerationStdY"           
"FrequencyBodyAccelerationStdZ"            "FrequencyBodyAccelerationJerkMeanX"       "FrequencyBodyAccelerationJerkMeanY"      
"FrequencyBodyAccelerationJerkMeanZ"       "FrequencyBodyAccelerationJerkStdX"        "FrequencyBodyAccelerationJerkStdY"       
"FrequencyBodyAccelerationJerkStdZ"        "FrequencyBodyGyroscopeMeanX"              "FrequencyBodyGyroscopeMeanY"             
"FrequencyBodyGyroscopeMeanZ"              "FrequencyBodyGyroscopeStdX"               "FrequencyBodyGyroscopeStdY"              
"FrequencyBodyGyroscopeStdZ"               "FrequencyBodyAccelerationMagMean"         "FrequencyBodyAccelerationMagStd"         
"FrequencyBodyBodyAccelerationJerkMagMean" "FrequencyBodyBodyAccelerationJerkMagStd"  "FrequencyBodyBodyGyroscopeMagMean"       
"FrequencyBodyBodyGyroscopeMagStd"         "FrequencyBodyBodyGyroscopeJerkMagMean"    "FrequencyBodyBodyGyroscopeJerkMagStd"  

