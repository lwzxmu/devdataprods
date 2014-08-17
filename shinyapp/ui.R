library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Chinese Zodiac Calculator"),
        sidebarPanel(
                p("This calculator can calculate your Chinese Zodiac. Now I need your birth date."),
                dateInput('birth', "Tell Me Your Your Birthday :-)", Sys.Date(),
                          min = '1900-01-01', max = Sys.Date()),
                submitButton('Submit!')
                ),
        mainPanel(
                h3('Confirm Your Birthday'),
                verbatimTextOutput('bir'),
                h3('Your Birth Year and Chinese Zodiac Here'),
                verbatimTextOutput('yers'),
                verbatimTextOutput("chinzodiac"),
                p("Note: Actually, the calculation of Chinese Zodiac is based on the Chinese Lunar 
                  Calender, which need a sophisticated transformation. But in today's China, calculating 
                  Chinese Zodiac is also okay on a Gregorian Calender basis. So in this mini-app, I 
                  calculated the Chinese Zodiac with Gregorian Calendar."),
                p("You can search Chinese Zodiac in wikipedia, where has an exact introduction of calculation 
                  of Chinese Zodiac. You can refer to it, if you like."),
                p("Just for fun! :-)")
                
)))
