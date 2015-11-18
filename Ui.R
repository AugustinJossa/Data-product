library(shiny)

shinyUI(
        pageWithSidebar(
                # Body Mass Index
                headerPanel("Calculate your Body mass index"),
                sidebarPanel(
                        numericInput('size', 'Size (in meter)', 90, min = 0, max = 3, step = 5),
                        numericInput('weight', 'Weight (in kilograms)', 90, min = 0, max = 300, step = 5),
                        submitButton('Submit')
                ),
                
                
                mainPanel(
                        h3('Results of prediction'),
                        h4('Your size'),
                        verbatimTextOutput("inputValue"),
                        h4('Your weight'),
                        verbatimTextOutput("inputValue2"),
                        h4('Your Body Mass Index is'),
                        verbatimTextOutput("prediction")
                )
        )
)
