Image Cropping
========================================================


```r
require(png)
```

```
## Loading required package: png
```

```r
require(RCurl)
```

```
## Loading required package: RCurl Loading required package: bitops
```

```r
puppy <- readPNG(getURLContent("http://dtkaplan.github.io/ScientificComputing/Resources/Images/mindo.png"))
```



```r
dim(puppy)
```

```
## [1] 198 216   4
```


## Mindo's Face

```r
puppyface <- puppy[1:120, 85:215, ]
COMP121::canvas(x = c(1, 220), y = c(1, 220), asp = 1)
graphics::rasterImage(puppyface, 1, 1, 215, 120)
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


## Mindo's Left Front Paw

```r
puppypaw <- puppy[155:195, 1:60, ]
COMP121::canvas(x = c(1, 220), y = c(1, 220), asp = 1)
graphics::rasterImage(puppypaw, 1, 1, 65, 190)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


## Mindo's Dog Tag

```r
puppytag <- puppy[120:145, 90:140, ]
COMP121::canvas(x = c(1, 220), y = c(1, 220), asp = 1)
graphics::rasterImage(puppytag, 1, 1, 60, 195)
```

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 


## Inital Framing Task Function

```r
require(jpg)
```

```
## Loading required package: jpg
```

```
## Warning: there is no package called 'jpg'
```

```r
require(RCurl)
robert <- readPNG(getURLContent("http://www.chicagolandsoccer.net/boys%202011/2011%20boys%20photos/BEN%20v%20CARM/DPP_6267-002.JPG"))
```

```
## Error: libpng error: Not a PNG file
```


## Matching color frame function



## Negative frame function



## Another function? MAYBE



## Mirror border function






