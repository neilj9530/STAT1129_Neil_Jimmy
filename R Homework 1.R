matrix1 <- matrix(c(7, 2, 9, 4, 12, 13), ncol = 3, nrow = 2)
matrix1

matrix2 <- matrix(c(1, 2, 3, 7, 8, 9, 12, 13, 14, 19, 20, 21), ncol = 4, nrow = 3)
matrix2

matrix1x2 <- matrix1%*%matrix2
matrix1x2

DF <- data.frame(read.csv(file = 'C:/Users/jimmy/Anaconda3/STAT 1129/Homework/netflix-data.csv', header = TRUE))

DF <- DF[-c(1,4,6,7,9,10)]

summary(DF)

DF <- DF[order(DF$Title),]

DF <- DF[-c(1:18, 62:200),]

DF <- DF[order(DF$Duration),]

DF <- DF[-c(1:5),]

DF <- cbind(DF, StartTime = as.POSIXct(DF$Start.Time, format= c("%m/%d/%Y %H:%M")))
DF <- DF[,-c(1)]

DF <- cbind(DF, Duration = as.POSIXct(DF$Duration, format= c("%H:%M:%OS")))
DF <- DF[, -c(1)]

DF <- cbind(DF, Weekday = as.POSIXlt(DF$StartTime)$wday)
DF <- cbind(DF, Hour = format(as.POSIXct(DF$StartTime), format = "%H"))


xweek <- c(DF$Weekday)
xweek
weekcount <- c(8, 6, 6, 6, 6, 3, 3)

barplot(weekcount, names.arg = c("Sunday", "Monday",
                             "Tuesday", "Wednesday", 
                             "Thursday", "Friday",
                             "Saturday"))
