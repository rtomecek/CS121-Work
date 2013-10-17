Recursion Intro
========================================================

# Write another form of the loop



# Add NSeq 

```r
addNSeq <- function(v) {
    sum <- 0  # accumulator
    for (k in 1:length(v)) {
        sum <- sum + v[k]
    }
    return(sum)
}
```


# Test Cases

```r
addNSeq(1:10)
```

```
## [1] 55
```


# Adding Recursively

```r
newAddNSeq <- function(v) {
    # Base Case
    if (length(v) == 0) 
        return(0)
    return(v[1] + newAddNSeq(v[-1]))
}
```


# Test Cases



# 



