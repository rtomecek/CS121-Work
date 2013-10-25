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
## [1] "eollh"
```


## VowelBleeper


```r
# Definition Here

```



```r
# Test Statements

```


## L33t 




```r
# Test Statements

```

