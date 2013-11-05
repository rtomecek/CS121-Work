String Transforms
===============================

## Reverser

```r
reverser <- function(word) {
    letters <- (strsplit(word, ""))
    x <- rev(letters[[1]])
    paste(x, collapse = "")
}
```



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
## [1] "ohlle"
```


## VowelBleeper

```r
# Definition Here
VowelBleeper <- function(word) {
    gsub("[aeiouAEIOU]", "*", word)
}
```



```r
# Test Statements
VowelBleeper("computer")
```

```
## [1] "c*mp*t*r"
```

```r
VowelBleeper("higher")
```

```
## [1] "h*gh*r"
```

```r
VowelBleeper("cat")
```

```
## [1] "c*t"
```

```r
VowelBleeper("Art")
```

```
## [1] "*rt"
```


## L33t 

```r
L33t <- function(word) {
    one <- gsub("[Ee]", "3", word)
    two <- gsub("[Oo]", "0", one)
    three <- gsub("[Aa]", "4", two)
    four <- gsub("[Ll]", "1", three)
    five <- gsub("[Gg]", "9", four)
    gsub("[Ss]", "5", five)
}
```



```r
# Test Statements
L33t("People at Macalester are awesome")
```

```
## [1] "P30p13 4t M4c4135t3r 4r3 4w350m3"
```

```r
L33t("Larry likes lemons")
```

```
## [1] "14rry 1ik35 13m0n5"
```


## Sets of Words

```r
# Reverser
Reverser <- function(word) {
    reverser <- function(word) {
        letters <- (strsplit(word, ""))
        x <- rev(letters[[1]])
        paste(x, collapse = "")
    }
    sapply(word, reverser)
}
```



```r
# Test Statements
Reverser(c("dog", "cat"))
```

```
##   dog   cat 
## "god" "tac"
```



```r
# Scrambler
scrambler <- function(word) {
    Scrambler <- function(word) {
        letters <- (strsplit(word, ""))
        x <- sample(letters[[1]])
        paste(x, collapse = "")
    }
    sapply(word, Scrambler)
}
```



```r
# Test Statements
scrambler(c("hello", "cowboy"))
```

```
##    hello   cowboy 
##  "loehl" "cbywoo"
```



```r
# VowelBleeper
vowelbleeper <- function(word) {
    VowelBleeper <- function(word) {
        gsub("[aeiouAEIOU]", "*", word)
    }
    sapply(word, VowelBleeper)
}
```



```r
# Test Statements
vowelbleeper(c("elephant", "cartoon"))
```

```
##   elephant    cartoon 
## "*l*ph*nt"  "c*rt**n"
```



```r
# L33t
Leet <- function(word) {
    L33t <- function(word) {
        one <- gsub("[Ee]", "3", word)
        two <- gsub("[Oo]", "0", one)
        three <- gsub("[Aa]", "4", two)
        four <- gsub("[Ll]", "1", three)
        five <- gsub("[Gg]", "9", four)
        gsub("[Ss]", "5", five)
    }
    sapply(word, L33t)
}
```



```r
# Test Statements
Leet(c("submarine", "elephant"))
```

```
##   submarine    elephant 
## "5ubm4rin3"  "313ph4nt"
```



