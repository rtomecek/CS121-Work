Substitution Cypher
========================================================

## Step 1: Key

```r
key <- function(word) {
    key <- unlist(strsplit(tolower(word), NULL))
    res = character(0)
    for (k in 1:length(key)) {
        num <- which(key[k] == letters)
        res <- c(res, num)
    }
    res <- paste(res, collapse = "")
    return(as.numeric(res))
}
```

## Test Case

```r
key("soccer")
```

```
## [1] 191533518
```


## Step 2: The Cypher: Encrypt

```r
encrypt <- function(keyword, message) {
    cSet <- (c(letters, LETTERS, ".", "?", "!", " "))
    set.seed(key(keyword))
    code <- sample(cSet)
    open <- paste(cSet, collapse = "")
    close <- paste(code, collapse = "")
    telegram <- chartr(open, close, message)
    return(telegram)
}
```



```r
encrypt("hello", "The enemy attacked")
```

```
## [1] "eIvNvhva!Njlljb?vX"
```


## Step 4: Decryption 

```r
decrypt <- function(message, keyword) {
    cSet <- (c(letters, LETTERS, ".", "?", "!", " "))
    set.seed(key(keyword))
    code <- sample(cSet)
    open <- paste(cSet, collapse = "")
    close <- paste(code, collapse = "")
    telegram <- chartr(close, open, message)
    return(telegram)
}
```



```r
decrypt("eIvNvhva!Njlljb?vX", "hello")
```

```
## [1] "The enemy attacked"
```

