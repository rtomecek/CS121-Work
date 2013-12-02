# Crosswords, Scrabble, and Regular Expressions
========================================================


```r
words <- readLines(url("http://dtkaplan.github.io/ScientificComputing/Syllabus/Daily/Day-07/word_list_moby_crossword-flat/word_list_moby_crossword.flat.txt"))
```


## Summarizing the List

### Number of words length 1

```r
LengthOne <- function(x) {
    analyze <- grepl("^.$", x)
    return(length(x[analyze]))
}
```


### Length 1 test

```r
LengthOne(words)
```

```
## [1] 0
```


### Number of words length 2

```r
LengthTwo <- function(x) {
    analyze <- grepl("^..$", x)
    return(length(x[analyze]))
}
```


### Length 2 Test

```r
LengthTwo(words)
```

```
## [1] 85
```


### Number of words length 3

```r
LengthThree <- function(x) {
    analyze <- grepl("^...$", x)
    return(length(x[analyze]))
}
```


### Length Three Test

```r
LengthThree(words)
```

```
## [1] 908
```







## Crossword helper function?

```r
crossword <- function(expression) {
    words <- readLines(url("http://dtkaplan.github.io/ScientificComputing/Syllabus/Daily/Day-07/word_list_moby_crossword-flat/word_list_moby_crossword.flat.txt"))
    analyze <- grepl(expression, words)
    return(words[analyze])
}
```



```r
crossword("^c...r$")
```

```
##  [1] "caber" "cager" "caner" "caper" "carer" "cater" "caver" "cedar"
##  [9] "ceder" "chair" "charr" "cheer" "chirr" "choir" "churr" "cider"
## [17] "cigar" "citer" "clear" "clour" "coder" "color" "comer" "cooer"
## [25] "coper" "corer" "cover" "cower" "coyer" "crier" "cruor" "cuber"
## [33] "curer" "cuter" "cyder" "cymar"
```


## Crossword Pattern function

```r
crosswordPattern <- function(length, ...) {
    letters <- list(...)
    str <- c("^", rep(".", length), "$")
    for (k in 1:length(letters)) str[letters[[k]] + 1] <- names(letters[k])
    paste(str, collapse = "")
}
```


## Scrabble function

```r
scrabble <- function(length, ...) {
    words[grep(crosswordPattern(length, ...), words)]
}
```


### Scrabble test

```r
scrabble(length = 6, a = 2, d = 5)
```

```
##  [1] "cairds" "caulds" "facade" "farads" "faulds" "gadids" "hairdo"
##  [8] "halide" "halids" "lairds" "lambda" "lamedh" "lameds" "malady"
## [15] "maunds" "maundy" "naiads" "naleds" "pagoda" "pagods" "panada"
## [22] "parade" "parody" "ranids" "rapids" "salads" "sarode" "sarods"
## [29] "sayids" "yairds"
```




