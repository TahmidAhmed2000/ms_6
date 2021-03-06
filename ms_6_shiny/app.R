#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    
    
    
    
    # Show a plot of the generated distribution
    mainPanel(
        plotOutput("distPlot")
    )
)


# Define server logic required to draw a histogram
server <- function(input, output) {
    
    output$distPlot <- renderImage({
        # Return a list containing the filename
        list(src = "EMreg.png", 
             contentType = 'image/png',
             width = 800,
             height = 800,
             alt = "This is alternate text"
        )}, deleteFile = FALSE)
}





# Run the application 
shinyApp(ui = ui, server = server)
