Interacting with Loops
========================================================

# Looping a Launch
 
## Using while

```r
blastoffWhile <- function(time) {
    # Time is a positive integer in seconds
    while (time != 0) {
        Sys.sleep(1)
        cat(time, "\n")
        time <- time - 1
    }
    Sys.sleep(1)
    cat("Blastoff!")
}
```


## Test Statements

```r
blastoffWhile(5)
```

```
## 5 
## 4 
## 3 
## 2 
## 1 
## Blastoff!
```


## Countdown

```r
countdown <- function(time) {
    for (k in time:1) {
        starttime <- Sys.time()
        system(paste("say", k))
        now <- starttime()
        Sys.sleep(1 - as.numeric(now - starttime))
    }
    system("say blastoff!")
}
```


## Test Statements

```r
countdown(5)
```

```
## Error: could not find function "starttime"
```


# Testing Human Response Times

```r

getData <- function(N) {
    result <- rep(NA, N)
    for (k in 1:N) {
        before <- Sys.time()
        readline("Press return")
        after <- Sys.time()
        delay <- as.numeric(after - before)
        cat(rep("\n", 20))
        result[k] <- delay
        Sys.sleep(runif(1, min = 1, max = 5))
    }
    return(result)
}
```


# Testing Human Response Times

```r
getData <- function(N) {
    for (k in 1:N) {
        before <- Sys.time()
        readline("Press Return:")
        after <- Sys.time()
        delay <- as.numeric(after - before)
        cat(rep("", 20))
        result <- delay
        Sys.sleep(runif(1, min = 1, max = 5))
    }
    return(result)
}
```


load("RobertData.RData")

