######################
#        DAY 2       #
######################

##### First Part #####

## Input
input <- readLines("Day2/data/day2.txt")

## Dictionary first case
combi <- c("4", "8", "3",
           "1", "5", "9",
           "7", "2", "6")
names(combi) <- c("A X", "A Y", "A Z",
                  "B X", "B Y", "B Z",
                  "C X", "C Y", "C Z")

## Map input vector
punct <- as.numeric(combi[input])

# Solution
result <- sum(punct)
print(result)

##### Second Part #####

## Dictionary second case
combi2 <- c("3", "4", "8",
            "1", "5", "9",
            "2", "6", "7")
names(combi2) <- c("A X", "A Y", "A Z",
                   "B X", "B Y", "B Z",
                   "C X", "C Y", "C Z")

## Map input vector
punct2 <- as.numeric(combi2[input])

## Solution
result2 <- sum(punct2)
print(result2)