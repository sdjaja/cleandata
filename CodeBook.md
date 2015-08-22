Filaname: Codebook.md
Author: Sunjaya Djaja
Date: 21 August 2015
Subject: Human Activity Recognition Using Smartphones Data Set
Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This data is data that is obtained through a group of 30 volunteers within an
age bracket of 19 - 48 years. Each person performed six activities (1 WALKING,
2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING).
This has been denoted as the activitycode in the dataset and the descriptive
name has been denoted as activitycode.str in the dataset. Each person is wearing
a smartphone (Samsung Galaxy S II) on the waist. Using the embedded accelerometer
and gyroscope, 3-axial linear acceleration and 3-axial angular velocity
at a constant rate of 50 Hz is captured. The experiments have been video
recorded to label the data manually. The obtained dataset has been randomly
partitioned into two sets, where 70% of the volunteers was selected for 
generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying 
noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% 
overlap (128 readings/window). The sensor acceleration signal, which has gravitational 
and body motion components, was separated using a Butterworth low-pass filter into
body acceleration and gravity. The gravitational force is assumed to have only low 
frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from 
the time and frequency domain.
	
The variables which exists as the column names in the dataset are as follows:
1	 tBodyAcc-mean()-X                    
2	 tBodyAcc-mean()-Y                   
3	 tBodyAcc-mean()-Z                    
4	 tBodyAcc-std()-X                    
5	 tBodyAcc-std()-Y                     
6	 tBodyAcc-std()-Z                    
7	 tGravityAcc-mean()-X                 
8	 tGravityAcc-mean()-Y                
9	 tGravityAcc-mean()-Z                 
10	 tGravityAcc-std()-X                 
11	 tGravityAcc-std()-Y                 
12	 tGravityAcc-std()-Z                 
13	 tBodyAccJerk-mean()-X                
14	 tBodyAccJerk-mean()-Y               
15	 tBodyAccJerk-mean()-Z                
16	 tBodyAccJerk-std()-X                
17	 tBodyAccJerk-std()-Y                 
18	 tBodyAccJerk-std()-Z                
19	 tBodyGyro-mean()-X                   
20	 tBodyGyro-mean()-Y                  
21	 tBodyGyro-mean()-Z                   
22	 tBodyGyro-std()-X                   
23	 tBodyGyro-std()-Y                    
24	 tBodyGyro-std()-Z                   
25	 tBodyGyroJerk-mean()-X               
26	 tBodyGyroJerk-mean()-Y              
27	 tBodyGyroJerk-mean()-Z               
28	 tBodyGyroJerk-std()-X               
29	 tBodyGyroJerk-std()-Y                
30	 tBodyGyroJerk-std()-Z               
31	 tBodyAccMag-mean()                   
32	 tBodyAccMag-std()                   
33	 tGravityAccMag-mean()                
34	 tGravityAccMag-std()                
35	 tBodyAccJerkMag-mean()               
36	 tBodyAccJerkMag-std()               
37	 tBodyGyroMag-mean()                  
38	 tBodyGyroMag-std()                  
39	 tBodyGyroJerkMag-mean()              
40	 tBodyGyroJerkMag-std()              
41	 fBodyAcc-mean()-X                    
42	 fBodyAcc-mean()-Y                   
43	 fBodyAcc-mean()-Z                    
44	 fBodyAcc-std()-X                    
45	 fBodyAcc-std()-Y                     
46	 fBodyAcc-std()-Z                    
47	 fBodyAcc-meanFreq()-X                
48	 fBodyAcc-meanFreq()-Y               
49	 fBodyAcc-meanFreq()-Z                
50	 fBodyAccJerk-mean()-X               
51	 fBodyAccJerk-mean()-Y                
52	 fBodyAccJerk-mean()-Z               
53	 fBodyAccJerk-std()-X                 
54	 fBodyAccJerk-std()-Y                
55	 fBodyAccJerk-std()-Z                 
56	 fBodyAccJerk-meanFreq()-X           
57	 fBodyAccJerk-meanFreq()-Y            
58	 fBodyAccJerk-meanFreq()-Z           
59	 fBodyGyro-mean()-X                   
60	 fBodyGyro-mean()-Y                  
61	 fBodyGyro-mean()-Z                   
62	 fBodyGyro-std()-X                   
63	 fBodyGyro-std()-Y                    
64	 fBodyGyro-std()-Z                   
65	 fBodyGyro-meanFreq()-X               
66	 fBodyGyro-meanFreq()-Y              
67	 fBodyGyro-meanFreq()-Z               
68	 fBodyAccMag-mean()                  
69	 fBodyAccMag-std()                    
70	 fBodyAccMag-meanFreq()              
71	 fBodyBodyAccJerkMag-mean()           
72	 fBodyBodyAccJerkMag-std()           
73	 fBodyBodyAccJerkMag-meanFreq()       
74	 fBodyBodyGyroMag-mean()             
75	 fBodyBodyGyroMag-std()               
76	 fBodyBodyGyroMag-meanFreq()         
77	 fBodyBodyGyroJerkMag-mean()          
78	 fBodyBodyGyroJerkMag-std()          
79	 fBodyBodyGyroJerkMag-meanFreq()      
80	 angle(tBodyAccMean,gravity)         
81	 angle(tBodyAccJerkMean),gravityMean)
82	 angle(tBodyGyroMean,gravityMean)   
83	 angle(tBodyGyroJerkMean,gravityMean)
84	 angle(X,gravityMean)               
85	 angle(Y,gravityMean)               
86	 angle(Z,gravityMean)
87	 activitycode                         
88	 subject                             
89	 activitycode.str  

Reference:
[1] http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones