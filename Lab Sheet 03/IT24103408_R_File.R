getwd()
setwd("C:\\Users\\LENOVO\\OneDrive\\Desktop\\")
getwd()

student_data <- read.csv("Exercise.csv", header = TRUE)
fix(student_data)

names(student_data) <- c("Age", "Gender", "Accommodation")

summary(student_data$Age)
hist(student_data$Age, main = "Histogram of Age", xlab = "Age")

gender_freq <- table(student_data$Gender)
gender_freq
barplot(gender_freq, 
        main = "Gender Distribution", 
        xlab = "Gender", 
        ylab = "Frequency", 
        names.arg = c("Male", "Female"))

boxplot(Age ~ Accommodation, data = student_data, 
        main = "Age Distribution by Accommodation Type",
        xlab = "Accommodation Type", ylab = "Age")