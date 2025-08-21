
setwd("C:\\Users\\it24103408\\Desktop")

branch_data <- read.table("Exercise.txt", header = TRUE, sep=",")

head(branch_data)

str(branch_data)

boxplot(branch_data$Sales_X1, 
        outline = TRUE,
        outpch=8,
        horizontal=TRUE,
        main = "sales distribution")

summary(branch_data$Advertising)

IQR_advertising <- IQR(branch_data$Advertising)
IQR_advertising

find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_value <- IQR(x)
  
  lower_bound <- Q1 - 1.5 * IQR_value
  upper_bound <- Q3 + 1.5 * IQR_value
  
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}

outliers_years <- find_outliers(branch_data$years)
outliers_years


print(paste("Upper Bound : ", upper_bound))
print(paste("Lower Bound : ", lower_bound))
print(paste("IQR : ", iqr))
print(paste("outliers", paste(outliers, collapse= ",")))
}

find_outliers(branch_data$Years)

