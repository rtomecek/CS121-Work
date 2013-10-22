Day 14 October 17th in class notes
========================================================

# Reverse a vector, recursively

```r
revrec <- function(v) {
    # Base Case
    if (length(v) == 1) 
        return(v) else {
        c(revrec(v[-1]), v[1])
    }
}
```


Test Cases

```r
revrec(c(5, 4, 3, 2, 1, 0))
```

```
## [1] 0 1 2 3 4 5
```







