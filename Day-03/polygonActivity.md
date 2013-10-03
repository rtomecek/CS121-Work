## Blank "Canvases", Circles and Squares
========================================================


```r
canvas <- function(mn = 0, mx = 100) {
    plot(1:2, ylim = c(mn, mx), xlim = c(mn, mx), asp = 1, xaxt = "n", yaxt = "n", 
        type = "n", xlab = "", ylab = "")
}
circle <- function(x, y, r, ry = r, ...) {
    angs <- seq(0, 2 * pi, length = 200)
    xpts <- x + r * cos(angs)
    ypts <- y + ry * sin(angs)
    polygon(xpts, ypts, ...)
}
```



```r
canvas()
circle(50, 50, 20, col = "blue")
circle(35, 70, r = 20, ry = 30, col = scales::alpha("pink", 0.3))
polygon(c(20, 40, 40, 20), c(60, 60, 40, 40), col = "green", border = "blue", 
    lwd = 10)
polygon(c(25, 40, 40, 25), c(30, 30, 15, 15), col = "red", border = "black")
polygon(c(60, 75, 90, 85, 65), c(65, 80, 65, 45, 45), col = "yellow")
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


