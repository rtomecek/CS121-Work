Finite Difference
========================================================


## Task 1



## Task 2

```r
evalD <- function(f, x) {
    h <- 1e-08  # 'Small h'
    return((f(x + h) - f(x - h))/(2 * h))
}
```


## Task 3

In words:

```r
"Test Cases:"
```

```
## [1] "Test Cases:"
```


## Task 4

```r
myD <- function(f) {
    return(function(x) evalD(f, x))
}
```


## Task 5

```r
myD <- function(f) {
    return(function(x) evalD(f, x))
}
```






