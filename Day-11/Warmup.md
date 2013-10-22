Day 11 Warmup
====================================================

```r
mySum <- function(v) {
    sofar <- 0
    k <- 1
    repeat {
        sofar <- sofar + v[k]
        k <- k + 1
        if (k == (length(v) + 1)) 
            break
    }
    return(sofar)
}

mySum(1:10)
```

```
## [1] 55
```


mySumwhile program

```r
mySumwhile <- function(v) {
    # set up state
    sofar <- 0
    k <- 1
    # loop
    while (k != (length(v) + 1)) {
        # update state
        sofar <- sofar + v[k]
        k <- k + 1
    }
    
    # what to do with results
    return(sofar)
}
mySumwhile(1:10)
```

```
## [1] 55
```


mySumFor Program

```r
mySumFor <- function(v) {
    # set up state
    sofar <- 0
    # loop
    for (k in 1:length(v)) {
        # update state
        sofar <- sofar + v[k]
    }
    # what to do with results
    return(sofar)
}
mySumFor(1:10)
```

```
## [1] 55
```


Running Sum Program

```r
myRunningSum <- function(v) {
    # set up state
    sofar <- 0
    res <- c()
    for (k in 1:length(v)) {
        # update state
        sofar <- sofar + v[k]
        res <- c(res, sofar)
    }
    # What to do with results
    return(res)
}
myRunningSum(1:10)
```

```
##  [1]  1  3  6 10 15 21 28 36 45 55
```


Runnning Sum Backwards

```r
myRunningSum <- function(v) {
    # set up state
    sofar <- 0
    res <- c()
    for (k in v) {
        # update state
        sofar <- sofar + v[k]
        res <- c(sofar, res)
    }
    # What to do with results
    return(res)
}
myRunningSum(1:10)
```

```
##  [1] 55 45 36 28 21 15 10  6  3  1
```


myUnique

```r
myUnique <- function(v) {
    # set up state
    already <- c()
    for (k in v) {
        # update state It's already in it
        if ((k %in% already)) {
            already <- c(already, "***")
        } else {
            # a new one!
            already <- c(already, k)
        }
    }
    # What to do with results
    return(already)
}
```

Test statement

```r
myUnique(c("dog", "ant", "bee", "cat", "dog"))
```

```
## [1] "dog" "ant" "bee" "cat" "***"
```

