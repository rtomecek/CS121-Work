November 12, 2013 in class notes
========================================================

GUI Ideas
- beta probability distribution
- cannon
- Hook's Law - Spring
- Typing Test
- Production Function (Econ)
- Probability Density Function
  - Titanic
- Cafe Mac
  - Flow of People into Cafe Mac
    - Day/Time
- Something with Sports?
  - Transfer Market in soccer?
  - something with NBA?
    - points per game by position given a certain amount of minutes?
      - minutes on x axis
      - points scored on y axis
      - 5 lines for 5 positions
      - choose a certain number of minutes or points scored and gives you the other?


```r
USCrimes <- function(UrbanPopulation) {
    manipuate()
    murder = picker
    assault = picker
    rape = picker
    
}
```



### Displays

```r
testMyUI <- function(UI, serverFun = function(input, output) {
}) {
    runApp(list(ui = bootstrapPage(UI), server = serverFun))
}
```



```r
choicesCheckbox <- checkboxGroupInput(inputID = "InputA", label = "Prevalence: People", 
    choices = list(Susceptables = "showS", Infectives = "showI", Recovered = "showR", 
        `Total Population` = "showPop"), selected = c("Infectives", "Susceptables"))
```

```
## Error: could not find function "checkboxGroupInput"
```







