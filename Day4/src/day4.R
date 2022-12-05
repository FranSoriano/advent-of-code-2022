######################
#        DAY 4       #
######################

library(dplyr)

##### First Part #####

## Input
input <- readLines("day4.txt")

## Delete commas of input
intervals <- gsub("-", ",", input)

## Dataframe with data
intervals_df <- read.table(text = intervals, sep = ",", fill = TRUE, as.is = TRUE)

## Rows that meet the first condition
rows_cond1 <- filter(intervals_df, (V1 <= V3 & V2 >= V4) | (V3 <= V1 & V4 >= V2))

## Solution
print(nrow(rows_cond1))

##### Second Part #####

## Rows that meet the second condition
rows_cond2 <- filter(intervals_df, ((V1 >= V3 & V1 <= V4) | (V2 >= V3 & V2 <= V4)) | 
                             ((V3 >= V1 & V3 <= V2) | (V4 >= V1 & V4 <= V2)))

## Solution
print(nrow(rows_cond2))