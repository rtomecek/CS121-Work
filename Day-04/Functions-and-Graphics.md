# Functions and Graphics
========================================================

# countOdds function

```r
countOdds <- function(x) {
    sum(x%%2)
    
}
```

 
## Test Cases

```r
countOdds(1:9)
```

```
## [1] 5
```



```r
countOdds(c(3, 5, 7))
```

```
## [1] 3
```



```r
countOdds(c(3, 5, 7, 6, 2, 0))
```

```
## [1] 3
```


# countEvens function

```r
countEvens <- function(x) {
    length(x) - countOdds(x)
}
```


## Test Cases

```r
countEvens(1:9)
```

```
## [1] 4
```



```r
countEvens(c(3, 5, 7))
```

```
## [1] 0
```



```r
countEvens(c(3, 5, 7, 6, 2, 0))
```

```
## [1] 3
```


# Triangles
## hypotenuseLength function

```r
hypotenuseLength <- function(a, b) {
    sqrt(a^2 + b^2)
}
```


## Test Cases

```r
hypotenuseLength(3, 4)
```

```
## [1] 5
```



```r
hypotenuseLength(13, 84)
```

```
## [1] 85
```


# lawOfCosines function

```r
lawOfCosines <- function(a, b, theta) {
    sqrt(a^2 + b^2 - 2 * a * b * cos(theta))
}


## Test Cases

lawOfCosines(13, 84, pi/2)  # right triangle
```

```
## [1] 85
```

```r



lawOfCosines(13, 84, 0)  # collapsed with theta=0
```

```
## [1] 71
```

```r



lawOfCosines(5, 5, pi/3)
```

```
## [1] 5
```

```r


# thetaFromLengths function
```

```r
thetaFromLengths <- function(a, b, c) {
    acos((c^2 - a^2 - b^2)/(-2 * a * b))
}


## Test Case
```

```r
thetaFromLengths(3, 4, 5)  # should be pi/2
```

```
## [1] 1.571
```

```r


# thetaFromLengthsTest function
```

```r
thetaFromLengthsTest <- function(a, b, theta) {
    thetaFromLengths(a, b, lawOfCosines(a, b, theta)) - theta
}


# Test
```

```r
thetaFromLengthsTest(13, 84, 0)
```

```
## [1] 0
```

# Graphics
## canvas funtion



## drawCircle function


 


