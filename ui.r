library(shinythemes)
shinyUI(fluidPage(
  theme = shinytheme("journal"),
  
  titlePanel("US Presidential Election Sentiment visualization"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Select sentiment types for sentiment distribution on global map."),
      
      selectInput("varLeader", 
                  label = "Choose a leader to display",
                  choices = c("Barack Obama", "Hillary Clinton", "Bernie Sanders", 
                              "Jeb Bush", "Ted Cruz", "Republican", "Democrat"),
                  selected = "Hillary Clinton"),
      
      checkboxGroupInput("typeSentiment", "Sentiment types", c( "Positive" = "P", "Negative" = "N", "Neutral" = "O")
                         , selected = c("Positive", "Negative", "Neutral"), inline = FALSE)
     
      ,  uiOutput("choose_dates")
      ,actionButton("goButton", "Display!")
      #, submitButton("Submit")
    ),
   
    mainPanel(
      h4(textOutput("caption")), 
      textOutput("ranfor"), a("This is an attempt to recreate the twitter exercise in R and Shiny"), 
      htmlOutput("gvis")
      
      )
  )
))

