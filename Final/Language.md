Final Exam
========================================================


```r
require(mosaic)
```

```
## Loading required package: mosaic
```

```
## Warning: package 'mosaic' was built under R version 3.0.2
```

```
## Loading required package: grid Loading required package: lattice
## 
## Attaching package: 'mosaic'
## 
## The following objects are masked from 'package:stats':
## 
## binom.test, cor, cov, D, fivenum, IQR, median, prop.test, sd, t.test, var
## 
## The following object is masked from 'package:base':
## 
## max, mean, min, print, prod, range, sample, sum
```

```r
fetchData("COMP121/word-hints.R")
```

```
## Retrieving from http://www.mosaic-web.org/go/datasets/COMP121/word-hints.R
```

```
## [1] TRUE
```


# letterProportion function

```r
letterProportion <- function(string) {
    small <- strsplit(string, split = "")  # split up the character string into individual letters
    tolower(small)  #Put character sting in all lowercase
    table(small)  # make a table of those letters from the character string
    
}
```



# FreqCompare function




