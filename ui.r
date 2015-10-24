library(shiny)
shinyUI(pageWithSidebar(
        #Application title
        
        headerPanel("MPG Prediction"),
        sidebarPanel(
                selectInput('cylinders', 'How many cylinders does your car have?', c(4,6,8)),
                submitButton('Submit')
                
        ),
        mainPanel(
                h3('Results of prediction'),
                h4('Number of cylinders in your car:'),
                verbatimTextOutput("inputValue"),
                h4('Estimated MPG for your car: '),
                verbatimTextOutput("prediction")
        )
))
