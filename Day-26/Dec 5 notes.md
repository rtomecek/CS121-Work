Dec 5, 2013 notes LAST DAY OF CLASS
========================================================

Operations we might need to use:
  Componenet 1: countVotes()
    data.frame(table()) or ddply()
    order()
    ["First"]
    sort(), argumenet is decreasing
  Componenet 2: whoWon() and whoLost() aka was there a winner true or false
    mutate() - to get the percentage
    to find total number of votes: sum()
    if: greater than 50%
    index: take the first one
    >
  Componenet 3: removeUndervote(), removeOvervote(), removeCandidate()
    chartr()? change undervote to NA maybe
    indexing
    which - changes T and F to numbers
    First=="undervote(or overvote)" - gives us a logical
  Componenet 4: promoteChoice()
    is.na() - think of like =="NA"
    indexing
    
    
    

```r
removeUndervote <- function(votes) {
    replacer <- which(votes$First == "undervote")
    votes$First[replacer] <- NA
}
```






