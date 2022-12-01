######################
#        DAY 1       #
######################

##### First Part #####

## Input
food <- readLines("Day1/data/day1.txt")

## Blank elements
blv <- !nzchar(food)

## Get the list for every elf
list <- unname(split(food[!blv], cumsum(blv)[!blv]))

## Cast list elements into integer
list_int <- lapply(list, function(x) as.integer(x))

## Sum of every element of the list
list_sum <- lapply(list_int, function(x) sum(x))

## Max value
result <- max(unlist(list_sum))

## Solution
print(result)

##### Second Part #####

## Sort result list
sorted_list_sum <- list_sum[order(unlist(list_sum), decreasing = TRUE)]

## Final sum
result2 <- sum(sorted_list_sum[[1]] + sorted_list_sum[[2]] +
                 sorted_list_sum[[3]])

## Solution
print(result2)