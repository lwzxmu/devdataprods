library(shiny)
zodiac <- function(btyear){
        zd <- c("Rat", "Ox","Tiger","Rabbit","Dragon","Snake","Horse","Goat","Monkey","Rooster","Dog","Pig")
        a <- (btyear - 1900)%%12 + 1
        return(zd[a])
}

shinyServer(function(input, output) {
        output$bir <- renderPrint({input$birth})
        output$yers <- renderPrint({as.numeric(format(input$birth, "%Y"))})
        output$chinzodiac <- renderPrint({zodiac(btyear = as.numeric(format(input$birth, "%Y")))})
})
