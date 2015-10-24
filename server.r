library(shiny)
require(dplyr)
data(mtcars)

avgMPG<-function(cylinders) mean(subset(mtcars, cyl == cylinders)$mpg)


shinyServer(
        function(input, output){
                output$inputValue <- renderPrint({input$cylinders})   
                output$prediction <- renderPrint({avgMPG(input$cylinders)})
        }
)
