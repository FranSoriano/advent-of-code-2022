######################
#        DAY 3       #
######################

##### Functions #####

## Definition of the assign_value function to obtain the value of each character
assign_value <- function(x) {
  num_c <- as.integer(charToRaw(substr(x, 1, 1)))
  if (num_c >= 97 && num_c <= 122) { #Lowercase
    num_c <- num_c - 96
  } else if (num_c >= 65 && num_c <= 90) { #Uppercase
    num_c <- num_c - 38
  }
  return(num_c)
}

##### First Part #####

## Input
input <- readLines("day3.txt")

## Division of each element of the vector into two parts of equal size
str_div <- lapply(input, function(x) {
  n <- nchar(x)
  c(substr(x, 1, n/2), substr(x, n/2 + 1, n))
  })

## List of characters repeated in each resulting string
rep_char <- lapply(str_div, function(x) intersect(strsplit(x[1], "")[[1]],
                                                  strsplit(x[2], "")[[1]]))

## Assignment of the value of each character
punct <- lapply(rep_char, assign_value)

## Sum of all character values
final_result <- sum(unlist(punct))

# Solution
print(final_result)

##### Second Part #####

# Division of the vector of strings in groups of three
str_div2 <- split(input, ceiling(seq_along(input)/3))

rep_char2 <- lapply(str_div2, function(x) Reduce(intersect,
                                               list(strsplit(x[[1]], "")[[1]],
                                                    strsplit(x[[2]], "")[[1]],
                                                    strsplit(x[[3]], "")[[1]])))

## Assignment of the value of each character
punct2 <- lapply(rep_char2, assign_value)

## Sum of all character values
final_result2 <- sum(unlist(punct2))

# Solution
print(final_result2)