# Base Conversion
========================================================

# Task 1

toBase(Z,b)
return(written expression of integer in that base)

```r
toBase <- function(z, b) {
    z <- z
    sofar <- c()
    repeat {
        r <- z%%b
        sofar <- c(r, sofar)
        z <- (z - r)/b
        if (z == 0) 
            break
    }
    return(as.character(sofar))
}
```


## Test Statements

```r
toBase(z = 10, b = 2)
```

```
## [1] "1" "0" "1" "0"
```

```r
toBase(z = 100, b = 3)
```

```
## [1] "1" "0" "2" "0" "1"
```

```r
toBase(z = 1000, b = 16)
```

```
## [1] "3"  "14" "8"
```


# Task 2 Without a loop


```r
basetoNumeric <- function(Nvec, b) {
    howMany <- length(Nvec)
    herdsize <- b^((howMany - 1):0)
    return(sum(as.numeric(Nvec) * herdsize))
}
```


## Test Statements

```r
basetoNumeric(c("7", "6", "5", "4"), 8)
```

```
## [1] 4012
```

```r
basetoNumeric(c("7", "6", "5", "4"), 9)
```

```
## [1] 5638
```


# Task 2 With a Loop

```r
convertAsALoop <- function(Nvec, b) {
    Nvec <- as.numeric(Nvec)
    sheepCount <- 0
    boxSize <- 1
    for (k in length(Nvec):1) {
        sheepCount <- sheepCount + boxSize * Nvec[k]
        boxSize <- boxSize * b
    }
    return(sheepCount)
}
```


## Test Statements

```r
convertAsALoop(c("7", "6", "5", "4"), 8)
```

```
## [1] 4012
```

```r
convertAsALoop(c("7", "6", "5", "4"), 9)
```

```
## [1] 5638
```

