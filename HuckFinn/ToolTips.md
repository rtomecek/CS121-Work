Tool Tips
========================================================
 
# formatWord Function

```r
formatWord <- function(word, translation, class) {
    if (is.na(translation) == TRUE) 
        return(as.character(word)) else {
        paste("<span class=", "'", class, "'", " ", "title=", "'", translation, 
            "'", ">", word, "</span>", sep = "")
    }
}
```


# Test Case

```r
formatWord("Hello", "hi there!", class = "hiword")
```

```
## [1] "<span class='hiword' title='hi there!'>Hello</span>"
```



```r
cat(formatWord("Hello", "hi there!", "hiword"), "to", "all", "of", "you", "in", 
    formatWord("Television Land.", "TV viewers", "hiword"))
```

<span class='hiword' title='hi there!'>Hello</span> to all of you in <span class='hiword' title='TV viewers'>Television Land.</span>

# Your Task 
## 1



## 2



## Test Statement


## 3



