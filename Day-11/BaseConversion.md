# Base Conversion
========================================================

## Task 1

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


Test Statements

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






