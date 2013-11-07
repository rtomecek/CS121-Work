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
    # Initialize State
    readline("Press Return when you're ready to start: ")
    result = numeric(N)
    for (k in 1:N) {
        # Modify the State
        before <- Sys.time()
        readline("Press Return:")
        after <- Sys.time()
        delay <- as.numeric(after - before)
        cat(rep("", 20))
        result[k] <- delay
        Sys.sleep(runif(1, min = 1, max = 5))
    }
    # Do something with the state
    return(result)
}
```



```r
load("RobertData.RData")
RobertData
```

```
##  [1] 0.7803 0.6313 0.3880 0.3509 0.5661 0.4270 0.3926 0.3701 0.6677 0.3905
```

