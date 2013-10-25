# Oct 1, 2013

## Reverser


```r
# Definition here:
reverser <- function(word) {
    letters <- (strsplit(word, ""))
    x <- rev(letters[[1]])
    paste(x, collapse = "")
}
```


Test Statements

```r
# Test Statements
reverser("computer")
```

```
## [1] "retupmoc"
```

```r
reverser("cat")
```

```
## [1] "tac"
```


## Scrambler


```r
# Definition Here
Scrambler <- function(word) {
    letters <- (strsplit(word, ""))
    x <- sample(letters[[1]])
    paste(x, collapse = "")
}
```



```r
# Test Statements
Scrambler("hello")
```

```
## [1] "lolhe"
```


## VowelBleeper


```r
# Definition Here
VowelBleeper <- function(word) {
    letters <- (strsplit(word, ""))
    a <- "*"
    e <- "*"
    i <- "*"
    o <- "*"
    u <- "*"
    paste(letters, collapse = )
}
```



```r
# Test Statements
VowelBleeper("computer")
```

```
## [1] "c(\"c\", \"o\", \"m\", \"p\", \"u\", \"t\", \"e\", \"r\")"
```

```r
VowelBleeper("higher")
```

```
## [1] "c(\"h\", \"i\", \"g\", \"h\", \"e\", \"r\")"
```

```r
VowelBleeper("cat")
```

```
## [1] "c(\"c\", \"a\", \"t\")"
```


## L33t 

```r
L33t <- function() {
    
}
```



```r
# Test Statements

```

