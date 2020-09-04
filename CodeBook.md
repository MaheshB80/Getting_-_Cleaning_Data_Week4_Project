# Tidy data set 'tidaydata.txt' description

# The variables in the tidy data
'tidydata.txt' contains 180 rows and 68 columns. Each row has averaged variables for each subject and each activity.

# All the variables estimated from mean and standard deviation in the tidy set were kept.
  mean()
  std()
  
# The data were averaged based on 'subject' and 'activity'.
'subject' column is numbered sequentially from 1 to 30.
'activity' column has 6 types as listed below.
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING  

 # Columns of tidy data set
 
 Update names begins with "t" to "time, "f" to "frequency" "BodyBody" to "Body"
 
 [1] "subject"                         "activity"                       
 [3] "timeBodyAcc-mean()-X"            "timeBodyAcc-mean()-Y"           
 [5] "timeBodyAcc-mean()-Z"            "timeBodyAcc-std()-X"            
 [7] "timeBodyAcc-std()-Y"             "timeBodyAcc-std()-Z"            
 [9] "timeGravityAcc-mean()-X"         "timeGravityAcc-mean()-Y"        
[11] "timeGravityAcc-mean()-Z"         "timeGravityAcc-std()-X"         
[13] "timeGravityAcc-std()-Y"          "timeGravityAcc-std()-Z"         
[15] "timeBodyAccJerk-mean()-X"        "timeBodyAccJerk-mean()-Y"       
[17] "timeBodyAccJerk-mean()-Z"        "timeBodyAccJerk-std()-X"        
[19] "timeBodyAccJerk-std()-Y"         "timeBodyAccJerk-std()-Z"        
[21] "timeBodyGyro-mean()-X"           "timeBodyGyro-mean()-Y"          
[23] "timeBodyGyro-mean()-Z"           "timeBodyGyro-std()-X"           
[25] "timeBodyGyro-std()-Y"            "timeBodyGyro-std()-Z"           
[27] "timeBodyGyroJerk-mean()-X"       "timeBodyGyroJerk-mean()-Y"      
[29] "timeBodyGyroJerk-mean()-Z"       "timeBodyGyroJerk-std()-X"       
[31] "timeBodyGyroJerk-std()-Y"        "timeBodyGyroJerk-std()-Z"       
[33] "timeBodyAccMag-mean()"           "timeBodyAccMag-std()"           
[35] "timeGravityAccMag-mean()"        "timeGravityAccMag-std()"        
[37] "timeBodyAccJerkMag-mean()"       "timeBodyAccJerkMag-std()"       
[39] "timeBodyGyroMag-mean()"          "timeBodyGyroMag-std()"          
[41] "timeBodyGyroJerkMag-mean()"      "timeBodyGyroJerkMag-std()"      
[43] "frequencyBodyAcc-mean()-X"       "frequencyBodyAcc-mean()-Y"      
[45] "frequencyBodyAcc-mean()-Z"       "frequencyBodyAcc-std()-X"       
[47] "frequencyBodyAcc-std()-Y"        "frequencyBodyAcc-std()-Z"       
[49] "frequencyBodyAccJerk-mean()-X"   "frequencyBodyAccJerk-mean()-Y"  
[51] "frequencyBodyAccJerk-mean()-Z"   "frequencyBodyAccJerk-std()-X"   
[53] "frequencyBodyAccJerk-std()-Y"    "frequencyBodyAccJerk-std()-Z"   
[55] "frequencyBodyGyro-mean()-X"      "frequencyBodyGyro-mean()-Y"     
[57] "frequencyBodyGyro-mean()-Z"      "frequencyBodyGyro-std()-X"      
[59] "frequencyBodyGyro-std()-Y"       "frequencyBodyGyro-std()-Z"      
[61] "frequencyBodyAccMag-mean()"      "frequencyBodyAccMag-std()"      
[63] "frequencyBodyAccJerkMag-mean()"  "frequencyBodyAccJerkMag-std()"  
[65] "frequencyBodyGyroMag-mean()"     "frequencyBodyGyroMag-std()"     
[67] "frequencyBodyGyroJerkMag-mean()" "frequencyBodyGyroJerkMag-std()" 

# variable types
'activity' variable is factor type.
'subject' variable is integer type.
All the other variables are numeric type.



