Filaname: README.md
Author: Sunjaya Djaja
Date: 21 August 2015
Subject: Human Activity Recognition Using Smartphones Data Set
Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data Transformation:

1. Read in the feature list (column names/variable names) of the dataset
   from ./features.txt into a data frame named df_feature
2. Read in the file ./test/subject_test.txt into the data frame called 
   dftest1. This is a number from 1 - 30 that denotes the volunteer number
   who is performing the activity at hand
3. Read in the file ./test/y_test.txt into the data frame called
   dftest2. This is a number from 1 - 6 denoting the following six activities:
   (1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 
   5 STANDING, 6 LAYING).
4. Read in the file ./test/X_test.txt into the data frame called dftest3.
   This contains the test measurements that were obtained and the variable
   names is described in ./features.txt.
5. Read in the file ./train/subject_train.txt into the data frame called
   dftrain1. This is a number from 1 - 30 that denotes the volunteer number
   who is performing the activity at hand   
6. Read in the file ./test/y_train.txt into the data frame called
   dftrain2. This is a number from 1 - 6 denoting the following six activities:
   (1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 
   5 STANDING, 6 LAYING).
7. Read in the file ./test/X_train.txt into the data frame called dftrain3.
   This contains the test measurements that were obtained and the variable
   names is described in ./features.txt.
8. Merge dftest3 and dftrain3 by row and refer to the resulting data frame 
   as df
9. Merge dftest2 and dftrain2 by row and refer to the resulting data frame
   as temp_y
10. Merge df and temp_y and refer to the resulting data frame as df. This data
    frame now contains the test result and activity code for the test result
11. Merge dftest1 and dftrain1 and refer to the resulting data frame as temp_subject
12  Merge df and temp_subject and the resulting data frame contains the test results,
    the activity code and the subject id
13. Set the column names of the data set appropriately from the feature list
    and add in activity code and subject id
14. Extract only the measurements containing the words [Mm]ean|std, which means
    that only the mean and standard deviations of each measurements have been extracted
	from the list of other possible measurements
15. Add in a column into the data frame df called activitycode.str that translates
    the numeric code for activity into a descriptive activity name
16. The data frame df is the first tidy data set required for this project
17. Then a second independent tidy dataset called df2 is created with the average
    for each activity and each subject
	
Reference:
[1] http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones