#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


# Define UI for application that draws a histogram
ui <- fluidPage(
    theme = shinytheme("superhero"),
    navbarPage("Weather Effects on Giants Performance",
               tabPanel("Stadium Attendance", mainPanel(h1('Stadium Attendance Regression'),
                                              p("This plot joined both weather data and stadium attendance of the New York Giants. It can be seen that there over time, there is no strong correlation between average temperature and stadium attendance. While the relationship is not significant, this plot shows that fans will attend games no matter the temperature."),
                                              p("Another notable aspect of the plot is that games with 90,000 attendees seems to be outliers. They are outliers because this is when the Giants play in the Cowboys stadium, which is one of the stadiums that holds the most amount of fans."),
                                              plotOutput("attendance"))),
                tabPanel("Data", mainPanel('Information about Data')
                        
                  
                        
    )))

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    output$attendance <- renderPlot({attendance})

}

# Run the application 
shinyApp(ui = ui, server = server)
