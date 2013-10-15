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








