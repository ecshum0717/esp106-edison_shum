## This is the lab for week 2 (there will be a small addition on Wednesday)
## Add working R code in between the questions
## The chapters refer to the sections in https://rspatial.org/intr/

## Chapter 8  (Functions)

## 1) Write a function 'f' that behaves like this:
## > f('Jim')
## [1] "hello Jim, how are you?"
f <- function(name) {
  return(paste("hello", name, "how are you?"))
}
result <- f('Jim')
result

## 2) Write a function 'sumOfSquares' that behaves like this:


## > d <- c(1,5,2,4,6,2,4,5)
## > sumOfSquares(d)
## [1] 21.875

# To compute the "sum of squares", subtract the mean value of all numbers from each number. 
# Square these numbers and sum them
# (bonus: make a variant that can handle NAs)

d <- c(1, 5, 2, 4, 6, 2, 4, 5)
sumsquares <- function(d) {
  d1 <- mean(d)
  d2 <- sum((d - d1)^2)
  return(d2)
}

result2 <- sumsquares(d)
print(result2)

## Chapter 9 (Apply)

## 3) compute the minimum, mean and maximum values for each variable in state.x77 using 'apply'

result3=apply(state.x77,2,function(x) c(min=min(x),mean=mean(x),max=max(x)))
result3


## Chapter 10  (Flow control)

## 4) Write a for loop that adds the numbers 1 to 10
sum_result <- 0
for (i in 1:10) {
  sum_result <- sum_result + i
}
print(sum_result)

## 5) Write a for loop that adds the odd numbers between 1 and 10 
lo <- 0
for (i in seq(1, 10, by = 2)) {
  lo <- lo + i
}
print(lo)

or

sum_number2=0
for(i in 1:10){
  if(i %in% c(2,4,6,8,10)){
    next
  }
  sum_number2=sum_number2+i
}
sum_number2
