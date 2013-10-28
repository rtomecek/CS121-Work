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

```r
canvas <- function(mn = 0, mx = 100) {
    plot(1:2, ylim = c(mn, mx), xlim = c(mn, mx), asp = 1, xaxt = "n", yaxt = "n", 
        type = "n", xlab = "", ylab = "")
}
canvas()
```

![plot of chunk unnamed-chunk-17](figure/unnamed-chunk-17.png) 


## drawCircle function

```r
drawCircle <- function(x, y, r, color, border = NULL) {
    angs <- seq(0, 2 * pi, length = 200)
    xpts <- x + r * cos(angs)
    ypts <- y + r * sin(angs)
    polygon(xpts, ypts, col = color, border = border)
}
canvas()
drawCircle(40, 40, 10, col = "red")
```

![plot of chunk unnamed-chunk-18](figure/unnamed-chunk-18.png) 



## Modify drawCircle

```r
drawCircle <- function(x, y, r, color, border = NULL, ...) {
    angs <- seq(0, 2 * pi, length = 200)
    xpts <- x + r * cos(angs)
    ypts <- y + r * sin(angs)
    polygon(xpts, ypts, col = color, border = border, ...)
}
canvas()
drawCircle(30, 30, 10, col = "pink", lwd = 10)
```

![plot of chunk unnamed-chunk-19](figure/unnamed-chunk-19.png) 


## Overlapping circles

```r
canvas()
drawCircle(30, 30, 15, col = "blue")
drawCircle(25, 25, 15, col = "pink")
```

![plot of chunk unnamed-chunk-20](figure/unnamed-chunk-20.png) 


## Olympic Logo

```r
canvas()
drawCircle(15, 70, 10, col = scales::alpha("white", 0.1), border = "blue", lwd = 10)
drawCircle(27, 60, 10, col = scales::alpha("white", 0.1), border = "yellow", 
    lwd = 10)
drawCircle(39, 70, 10, col = scales::alpha("white", 0.1), border = "black", 
    lwd = 10)
drawCircle(51, 60, 10, col = scales::alpha("white", 0.1), border = "green", 
    lwd = 10)
drawCircle(63, 70, 10, col = scales::alpha("white", 0.1), border = "red", lwd = 10)
```

![plot of chunk unnamed-chunk-21](figure/unnamed-chunk-21.png) 


