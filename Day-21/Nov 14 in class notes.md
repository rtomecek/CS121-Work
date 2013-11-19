Day-21 in class notes November 14, 2013
========================================================

## Server Part of an app



```r
drawDistribution <- function(fun = dbeta, param1 = 1, param2 = 0.5, xlim = c(0, 
    1), xdata = NULL) {
    x <- seq(xlim[1], xlim[2], length = 200)
    y <- fun(x, param1, param2)
    # Get rid of points not in the domain of the distribution
    keep <- is.finite(y)
    y <- y[keep]
    x <- x[keep]
    plot(x, y, type = "l", xlim = xlim, lwd = 2, col = "red", ylim = c(0, max(y)), 
        ylab = "Probability Density", xlab = "x", bty = "n")
    if (!is.null(xdata)) {
        points(xdata, rep(0, length(xdata)), pch = 20, col = rgb(0, 0, 0, 0.1))
        dens <- density(xdata)
        lines(dens$x, dens$y)
    }
}
```




```r
myUI <- div(div(class = "jumbotron masthead", h3("The β Distribution"), p("Showing the shape of the β distribution."), 
    actionButton(inputId = "submitted", "Send in your parameters.")), div(class = "row span9 well", 
    div(class = "span3 well", selectInput("distDistrib", "Choice of Distribution", 
        list(uniform = "uniform", gaussian = "normal", beta = "beta", `chi squared` = "chisq"), 
        selected = "beta"), sliderInput("distParam1", "Parameter 1", min = 0.01, 
        max = 2, step = 0.01, value = 0.5), sliderInput("distParam2", "Parameter 2", 
        min = 0.01, max = 2, step = 0.01, value = 0.1)), div(class = "span4 well", 
        plotOutput("distPlot1"), sliderInput("distXrange", "X-axis Range", min = -10, 
            max = 10, step = 0.5, value = c(0, 1)))))
```

```
## Error: could not find function "div"
```



```r
paramNames <- function(name) {
    res <- switch(EXPR = name, uniform = list(distParam1 = "min", distParam2 = "max", 
        domain = c(-Inf, Inf), fun = function(x, param1, param2) {
            if (param1 >= param2) stop("Max must be larger than min")
            dunif(x, min = param1, max = param2)
        }), normal = list(distParam1 = "mean", distParam2 = "sd", domain = c(-Inf, 
        Inf), fun = function(x, param1, param2) {
        dnorm(x, mean = param1, sd = param2)
    }), beta = list(distParam1 = "a", distParam2 = "b", domain = c(0.001, 0.999), 
        fun = function(x, param1, param2) {
            dbeta(x, shape1 = param1, shape2 = param2)
        }), chisq = list(distParam1 = "df", distParam2 = "-- not used --", domain = c(0, 
        Inf), fun = function(x, param1, param2) {
        dchisq(x, df = param1)
    }))
    return(res)
}
```








