#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinythemes)


# Define UI for application that draws a histogram
ui <- fluidPage(
    theme = shinytheme("superhero"),
    navbarPage("Weather Effects on NY Giants",
               tabPanel("Stadium Attendance", mainPanel(h1('Stadium Attendance Regression'),
                                              p("This plot joined both weather data and stadium attendance of the New York Giants. It can be seen that there over time, there is no strong correlation between average temperature and stadium attendance. While the relationship is not significant, this plot shows that fans will attend games no matter the temperature."),
                                              p("Another notable aspect of the plot is that games with 90,000 attendees seems to be outliers. They are outliers because this is when the Giants play in the Cowboys stadium, which is one of the stadiums that holds the most amount of fans."),
                                              plotOutput("attendance"))),
               tabPanel("Analysis", h1('Looking at Regression'),
                        p("After conducing a regression of temperature and stadium attendance, I get a correlation of -.03, which shows that there weekly attendance and temperature have a week relation. Furthermore, the regression coefficient for avg_temp was -16.08 with a p-value of .734. Given that the p-value is also greater than 0.05, based on the p-value test, this coefficient is not statistically significant)."
                        
               )),
    
        tabPanel("About", mainPanel('Background'),
                         br(),
         p("In this project, I am focuing on the effects of weather on the New York Giants performance and attendance of games. The weather data and game logs of players is sourced from the Github account, Nolanole. The data contains weather characteristics like average temperature, dewpoint, humidity, etc. Furthermore, I have joined the weather data and player statistics with stadium attendance to see how weather affects attendance of games. The attendance data is sourced from the Github profile, Rfordatascience. I am from New York and the Giants are my favorite team, and I thought it would be interesting to focus on my favorite team. 
                          You can find the code to this project on my ",
                            a("GitHub",
                              href = "https://github.com/TahmidAhmed2000"),
                          "account page. My email is tahmidahmed@college.harvard.edu."
           )
                        
        )))

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    output$attendance <- renderPlot({attendance})

}

# Run the application 
shinyApp(ui = ui, server = server)
