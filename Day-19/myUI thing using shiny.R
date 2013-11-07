myUI <- bootstrapPage(
  div(class='jumbotron masthead',
      h1('The Title of my Page'),
      p('This will be the very polite intro to my page')),
  div(class='row span12',
    div(class='span4',
        h3("In the first block")
        ),
    div(class='span3',
        h4("I am here too"),
        h2('Big Brother')
    )
  )
)
dummyServer <- function(input,output){}


