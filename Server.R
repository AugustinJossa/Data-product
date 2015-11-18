BMI <- function(size, weight) weight / (size*size)

shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$size})
                output$inputValue2 <- renderPrint({input$weight})
                output$prediction <- renderPrint({BMI(input$size, input$weight)})
        }
)