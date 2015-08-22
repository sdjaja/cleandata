library("dplyr")
require("dplyr")

run_analysis <- function(directory) {
        
        filefeature <- NULL
        filetest <- NULL
        filetrain <- NULL
        df_test <- NULL
        df_train <- NULL
        df_feature <- NULL
        
        filefeature <- "/features.txt"
        
        filetest[1] <- "/test/subject_test.txt"
        filetest[2] <- "/test/y_test.txt"
        filetest[3] <- "/test/X_test.txt"
        
        filetrain[1] <- "/train/subject_train.txt"
        filetrain[2] <- "/train/y_train.txt"        
        filetrain[3] <- "/train/X_train.txt"
        
        
        df_feature <- read.table(paste0(directory, filefeature), header = FALSE)
        
        dftest1 <- read.csv(paste0(directory, filetest[1]), header = FALSE, nrows = 2947)
        dftest2 <- read.csv(paste0(directory, filetest[2]), header = FALSE, nrows = 2947)
        dftest3 <- read.table(paste0(directory, filetest[3]), header = FALSE, nrows = 2947)
        
        
        dftrain1 <- read.csv(paste0(directory, filetrain[1]), header = FALSE, nrows = 7352)
        dftrain2 <- read.csv(paste0(directory, filetrain[2]), header = FALSE, nrows = 7352)
        dftrain3 <- read.table(paste0(directory, filetrain[3]), header = FALSE, nrows = 7352)
        
        # test data comes before train data
        df <- rbind(dftest3, dftrain3)
        # row bind the test y and train y data
        # this y data is the activity data as described in the features.txt
        temp_y <- rbind(dftest2, dftrain2)
        # need to convert this to value in text
        
        # bind to the right the column for activity data coded
        df <- cbind(df, temp_y)
        # test subject above training subject
        temp_subject <- rbind(dftest1, dftrain1)
        df <- cbind(df, temp_subject)
        
        temp_list <- c("activitycode", "subject")
        
        feature_list <- NULL
        for(i in 1:NROW(df_feature))
                feature_list <- cbind(feature_list, as.character(df_feature[i, 2]))
        
        colnames(df) <- NULL
        
        colnames(df) <- c(feature_list, temp_list)
        df <- df[, grepl("[Mm]ean|std|activitycode|subject", colnames(df))]
        activity.code = c(WALKING = 1,
                          WALKING_UPSTAIRS = 2,
                          WALKING_DOWNSTAIRS = 3,
                          SITTING = 4,
                          STANDING = 5,
                          LAYING = 6)
        df$activitycode.str <- names(activity.code)[match(df$activitycode, activity.code)]
        df
        df2 <- df[,-87] %>%
                group_by(activitycode.str, subject) %>%
                summarise_each(funs(mean))
        df2
}